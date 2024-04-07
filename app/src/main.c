#include <zephyr/kernel.h>
#include <zephyr/drivers/gpio.h>

#include <zephyr/net/net_ip.h>
#include <zephyr/net/socket.h>
#include <zephyr/net/http/client.h>

#include <zephyr/logging/log.h>
LOG_MODULE_REGISTER(main, CONFIG_APP_LOG_LEVEL);

/* IOTEMBSYS: Add required iheadersmport shell and/or others */
//#include <zephyr/shell/shell.h>

/* IOTEMBSYS7: Add required headers for settings */

/* IOTEMBSYS7: Add required headers for protobufs */

#include <stdlib.h>
#include <stdio.h>
#include "app_version.h"

// Helper for converting macros into strings
#define str(s) #s
#define xstr(s) str(s)

/* 1000 msec = 1 sec */
#define DEFAULT_SLEEP_TIME_MS   1000

/* The devicetree node identifier for the "led0" alias. */
#define LED0_NODE DT_ALIAS(led0)

/* IOTEMBSYS: Add joystick key declarations. */
#define SW0_NODE	DT_ALIAS(sw0)
#define SW1_NODE	DT_ALIAS(sw1)
#define SW2_NODE	DT_ALIAS(sw2)
#define SW3_NODE	DT_ALIAS(sw3)
#define SW4_NODE	DT_ALIAS(sw4)
static const struct gpio_dt_spec sw0 = GPIO_DT_SPEC_GET_OR(SW0_NODE, gpios,
							      {0});
static const struct gpio_dt_spec sw1 = GPIO_DT_SPEC_GET_OR(SW1_NODE, gpios,
							      {0});
static const struct gpio_dt_spec sw2 = GPIO_DT_SPEC_GET_OR(SW2_NODE, gpios,
							      {0});
static const struct gpio_dt_spec sw3 = GPIO_DT_SPEC_GET_OR(SW3_NODE, gpios,
							      {0});								  								  								  
static const struct gpio_dt_spec sw4 = GPIO_DT_SPEC_GET_OR(SW4_NODE, gpios,
							      {0});								  
static struct gpio_callback button_cb_data_0;
static struct gpio_callback button_cb_data_1;
static struct gpio_callback button_cb_data_2;
static struct gpio_callback button_cb_data_3;
static struct gpio_callback button_cb_data_4;

/* IOTEMBSYS7: Define/declare partitions here if needed for erasing flash */
// #define STORAGE_PARTITION storage_partition
// #define STORAGE_PARTITION_ID FIXED_PARTITION_ID(STORAGE_PARTITION)

/*
 * A build error on this line means your board is unsupported.
 * See the blinky sample documentation for information on how to fix this.
 */
static const struct gpio_dt_spec led = GPIO_DT_SPEC_GET(LED0_NODE, gpios);

/* The amount of time between GPIO blinking. */
static uint32_t blink_interval_ = DEFAULT_SLEEP_TIME_MS;

/* IOTEMBSYS: Add synchronization to unblock the sender task */
static struct k_event unblock_sender_;
typedef enum {
	BUTTON_ACTION_NONE = 0,
	BUTTON_ACTION_GENERIC_HTTP,
	BUTTON_ACTION_OTA_DOWNLOAD,
	BUTTON_ACTION_PROTO_REQ,
	BUTTON_ACTION_GET_OTA_PATH,
} button_action_e;

/* IOTEMBSYS: Add synchronization to pass the socket to the receiver task */
struct k_fifo socket_queue_;

/* IOTEMBSYS: Create a buffer for receiving HTTP responses */
#define MAX_RECV_BUF_LEN 1024
static uint8_t recv_buf_[MAX_RECV_BUF_LEN];

/* IOTEMBSYS: Consider provisioning a device ID. */
static const char kDeviceId[] = "12345";

static void change_blink_interval(uint32_t new_interval_ms) {
	blink_interval_ = new_interval_ms;
}

/* IOTEMBSYS7: Define a default settings val and configuration access */

/*
static int provisioning_settings_set(const char *name, size_t len,
                            settings_read_cb read_cb, void *cb_arg)
{
    // Your code goes here
}


static int provisioning_settings_export(int (*storage_func)(const char *name,
                                                   const void *value,
                                                   size_t val_len))
{
    // Your code goes here
}

// You can give this whatever name you like
struct settings_handler settings_conf = { }
*/

/* IOTEMBSYS: Add joystick press handler. Metaphorical bonus points for debouncing. */
static void button_pressed(const struct device *dev, struct gpio_callback *cb,
		    uint32_t pins) {
	printk("Button %d pressed at %" PRIu32 "\n", pins, k_cycle_get_32());

	uint32_t interval_ms = 0;
	if (pins == BIT(sw0.pin)) {
		interval_ms = 100;
	} else if (pins == BIT(sw1.pin)) {
		// Down
		interval_ms = 200;
		k_event_set(&unblock_sender_, (1 << BUTTON_ACTION_OTA_DOWNLOAD));
	} else if (pins == BIT(sw2.pin)) {
		// Right
		interval_ms = 500;
		k_event_set(&unblock_sender_, (1 << BUTTON_ACTION_GENERIC_HTTP));
	} else if (pins == BIT(sw3.pin)) {
		// Up
		interval_ms = 1000;
		k_event_set(&unblock_sender_, (1 << BUTTON_ACTION_PROTO_REQ));
	} else if (pins == BIT(sw4.pin)) {
		// Left
		k_event_set(&unblock_sender_, (1 << BUTTON_ACTION_GET_OTA_PATH));
		interval_ms = 2000;
	} else {
		printk("Unrecognized pin");
	}

	if (interval_ms != 0) {
		printk("Setting interval to %d", interval_ms);
		change_blink_interval(interval_ms);
	}
}

static int init_joystick_gpio(const struct gpio_dt_spec* button, struct gpio_callback* data) {
	int ret = -1;

	if (!gpio_is_ready_dt(button)) {
		printk("Error: button device %s is not ready\n",
		       button->port->name);
		return ret;
	}

	ret = gpio_pin_configure_dt(button, GPIO_INPUT);
	if (ret != 0) {
		printk("Error %d: failed to configure %s pin %d\n",
		       ret, button->port->name, button->pin);
		return ret;
	}

	ret = gpio_pin_interrupt_configure_dt(button,
					      GPIO_INT_EDGE_TO_ACTIVE);
	if (ret != 0) {
		printk("Error %d: failed to configure interrupt on %s pin %d\n",
			ret, button->port->name, button->pin);
		return ret;
	}

	gpio_init_callback(data, button_pressed, BIT(button->pin));
	gpio_add_callback(button->port, data);
	return ret;
}

//
// Networking/sockets helpers
//
static void dump_addrinfo(const struct addrinfo *ai) {
	printf("addrinfo @%p: ai_family=%d, ai_socktype=%d, ai_protocol=%d, "
	       "sa_family=%d, sin_port=%x\n",
	       ai, ai->ai_family, ai->ai_socktype, ai->ai_protocol,
	       ai->ai_addr->sa_family,
	       ((struct sockaddr_in *)ai->ai_addr)->sin_port);
}

static int get_addr_if_needed(struct addrinfo **ai, const char* host, const char* port) {
	if (*ai != NULL) {
		// We already have the address.
		return 0;
	}
	struct addrinfo hints;
	int st;

	memset(&hints, 0, sizeof(hints));
	hints.ai_family = AF_INET;
	hints.ai_socktype = SOCK_STREAM;
	st = getaddrinfo(host, port, &hints, ai);
	LOG_INF("getaddrinfo status: %d\n", st);
	if (st == 0) {
		dump_addrinfo(*ai);
	}
	return st;
}

//
// Generic HTTP Request Section
//

// WARNING: These IPs are not static! Use a DNS lookup tool
// to get the latest IP.
#define TCPBIN_IP "45.79.112.203"
#define HTTPBIN_IP "54.204.94.184"
#define TCP_PORT 4242
#define IS_POST_REQ 1
#define USE_PROTO 1

#define HTTPBIN_PORT 80
#define HTTPBIN_HOST "httpbin.org"
static struct addrinfo* httpbin_addr_;

/* IOTEMBSYS: Create a HTTP response handler/callback. */
void http_response_cb(struct http_response *rsp,
			enum http_final_call final_data,
			void *user_data)
{
	if (final_data == HTTP_DATA_MORE) {
		LOG_INF("Partial data received (%zd bytes)", rsp->data_len);
	} else if (final_data == HTTP_DATA_FINAL) {
		LOG_INF("All the data received (%zd bytes)", rsp->data_len);
		
		// This assumes the response fits in a single buffer.
		recv_buf_[rsp->data_len] = '\0';
	}

	LOG_INF("Response to %s", (const char *)user_data);
	LOG_INF("Response status %s", rsp->http_status);
}

int http_payload_cb(int sock, struct http_request *req, void *user_data) {
	const char *content[] = {
		"foobar",
		"chunked",
		"last"
	};
	char tmp[64];
	int i, pos = 0;

	for (i = 0; i < ARRAY_SIZE(content); i++) {
		pos += snprintk(tmp + pos, sizeof(tmp) - pos,
				"%x\r\n%s\r\n",
				(unsigned int)strlen(content[i]),
				content[i]);
	}

	pos += snprintk(tmp + pos, sizeof(tmp) - pos, "0\r\n\r\n");

	(void)send(sock, tmp, pos, 0);

	return pos;
}

/* IOTEMBSYS: Implement the HTTP client functionality */
static void generic_http_request(void) {
	int sock;
	const int32_t timeout = 5 * MSEC_PER_SEC;

	// Get the IP address of the domain
	if (get_addr_if_needed(&httpbin_addr_, HTTPBIN_HOST, xstr(HTTPBIN_PORT)) != 0) {
		LOG_ERR("DNS lookup failed");
		return;
	}

	// Create a socket using parameters that the modem allows.
	sock = socket(AF_INET, SOCK_STREAM, IPPROTO_TCP);
	if (sock < 0) {
		LOG_ERR("Creating socket failed");
		return;
	}
	if (connect(sock, httpbin_addr_->ai_addr, httpbin_addr_->ai_addrlen) < 0) {
		LOG_ERR("Connecting to socket failed");
		return;
	}

	struct http_request req;

	memset(&req, 0, sizeof(req));
	memset(recv_buf_, 0, sizeof(recv_buf_));

#if !IS_POST_REQ
	req.method = HTTP_GET;
	req.url = "/get";
#else
	req.method = HTTP_POST;
	req.url = "/post";
	req.payload_cb = http_payload_cb;
	// This must match the payload-generating function!
	req.payload_len = 37;
#endif // IS_POST_REQ
	req.host = HTTPBIN_HOST;
	req.protocol = "HTTP/1.1";
	req.response = http_response_cb;
	req.recv_buf = recv_buf_;
	req.recv_buf_len = sizeof(recv_buf_);

	// This request is synchronous and blocks the thread.
	LOG_INF("Sending HTTP request");
	int ret = http_client_req(sock, &req, timeout, "IPv4 GET");
	if (ret > 0) {
		LOG_INF("HTTP request sent %d bytes", ret);
	} else {
		LOG_ERR("HTTP request failed: %d", ret);
	}

	LOG_INF("Closing the socket");
	close(sock);
}

//
// Backend Request Section
//

/* IOTEMBSYS7: Change the host and/or port to match your instance. */
// You will need to change this to match your host
// WARNING: This will change with each new EC2 instance!
#define EC2_HOST "ec2-54-167-81-5.compute-1.amazonaws.com"
#define BACKEND_PORT 8080
#define BACKEND_HOST EC2_HOST ":8080"
static struct addrinfo* backend_addr_;

/* IOTEMBSYS7: Add protobuf encoding and decoding. */
static bool encode_status_update_request(uint8_t *buffer, size_t buffer_size, size_t *message_length)
{
	bool status = false;

	// Your implementation goes here.

	return status;
}

static bool decode_status_update_response(uint8_t *buffer, size_t message_length)
{
	bool status = false;
	
	// Your implementation goes here.

	return status;
}

int http_proto_payload_gen(uint8_t* buffer, size_t buf_size) {
	size_t message_length;

	/* Encode our message */
	if (!encode_status_update_request(buffer, buf_size, &message_length)) {
		LOG_ERR("Encoding request failed");
		return 0;
	} else {
		LOG_INF("Sending proto to server. Length: %d", (int)message_length);
	}

	return (int)message_length;
}

void http_proto_response_cb(struct http_response *rsp,
			enum http_final_call final_data,
			void *user_data)
{
	if (final_data == HTTP_DATA_MORE) {
		LOG_INF("Partial data received (%zd bytes)", rsp->data_len);
	} else if (final_data == HTTP_DATA_FINAL) {
		LOG_INF("All the data received (%zd bytes)", rsp->data_len);

		// Decode the protobuf response.
		decode_status_update_response(rsp->body_frag_start, rsp->body_frag_len);
	}

	LOG_INF("Response to %s", (const char *)user_data);
	LOG_INF("Response status %s", rsp->http_status);
}


/* IOTEMBSYS7: The backend request functionality has been implemented for you. Feel free to modify as needed. */
static void backend_http_request(void) {
	int sock;
	const int32_t timeout = 5 * MSEC_PER_SEC;

	// Get the IP address of the domain
	if (get_addr_if_needed(&backend_addr_, EC2_HOST, xstr(BACKEND_PORT)) != 0) {
		LOG_ERR("DNS lookup failed");
		return;
	}

	// Create a socket using parameters that the modem allows.
	sock = socket(AF_INET, SOCK_STREAM, IPPROTO_TCP);
	if (sock < 0) {
		LOG_ERR("Creating socket failed");
		return;
	}
	if (connect(sock, backend_addr_->ai_addr, backend_addr_->ai_addrlen) < 0) {
		LOG_ERR("Connecting to socket failed");
		return;
	}

	struct http_request req;

	memset(&req, 0, sizeof(req));
	memset(recv_buf_, 0, sizeof(recv_buf_));

	req.method = HTTP_POST;
	req.url = "/status_update";
	req.host = BACKEND_HOST;
	req.protocol = "HTTP/1.1";
	req.payload_len = http_proto_payload_gen(recv_buf_, sizeof(recv_buf_));
	req.payload = req.payload_len ? recv_buf_ : NULL;
	req.response = http_proto_response_cb;
	req.recv_buf = recv_buf_;
	req.recv_buf_len = sizeof(recv_buf_);

	// This request is synchronous and blocks the thread.
	LOG_INF("Sending HTTP request");
	int ret = http_client_req(sock, &req, timeout, "IPv4 GET");
	if (ret > 0) {
		LOG_INF("HTTP request sent %d bytes", ret);
	} else {
		LOG_ERR("HTTP request failed: %d", ret);
	}

	LOG_INF("Closing the socket");
	close(sock);
}

// This thread is responsible for making all HTTP requests in the app.
// This enforces simplicity, and prevents requests from stepping on one another.
void http_client_thread(void* p1, void* p2, void* p3) {
	k_event_init(&unblock_sender_);

	while (true) {
		uint32_t  events;

		LOG_INF("Waiting for button");
		events = k_event_wait(&unblock_sender_, 0xFFF, true, K_FOREVER);
		if (events == 0) {
			printk("This should not be happening!");
			continue;
		}

		// Multiple button events are possible, so handle all without exclusion.
		if (events & (1 << BUTTON_ACTION_GENERIC_HTTP)) {
			generic_http_request();
		}
		if (events & (1 << BUTTON_ACTION_OTA_DOWNLOAD)) {
			LOG_INF("OTA not implemented");
		}
		if (events & (1 << BUTTON_ACTION_PROTO_REQ)) {
			backend_http_request();
		}
		if (events & (1 << BUTTON_ACTION_GET_OTA_PATH)) {
			LOG_INF("OTA not implemented");
		}
	}
}

K_THREAD_DEFINE(http_client_tid, 4000 /*stack size*/,
                http_client_thread, NULL, NULL, NULL,
                5 /*priority*/, 0, 0);

void main(void)
{
	int ret;
	const struct device *modem;

	if (!gpio_is_ready_dt(&led)) {
		return;
	}

	ret = gpio_pin_configure_dt(&led, GPIO_OUTPUT_ACTIVE);
	if (ret < 0) {
		return;
	}

	// This code is commented out to aid you in development
	// if you ever need to erase a flash area. If you find yourself
	// in a situation where the previously saved settings aren't loading
	// then it's likely that the partition is corrupted and needs to be erased.

	// Erase a flash area if previously written to.
	// const struct flash_area *my_area;
	// int err = flash_area_open(STORAGE_PARTITION_ID, &my_area);
	// if (err != 0) {
	// 	printk("Flash area open failed");
	// } else {
	// 	err = flash_area_erase(my_area, 0, FLASH_AREA_SIZE(storage));
	// }

	/* IOTEMBSYS7: Initialize settings subsystem. */

	/* IOTEMBSYS7: Increment, save, and log the boot count. */

	/* IOTEMBSYS: Configure joystick GPIOs. */
	init_joystick_gpio(&sw0, &button_cb_data_0);
	init_joystick_gpio(&sw1, &button_cb_data_1);
	init_joystick_gpio(&sw2, &button_cb_data_2);
	init_joystick_gpio(&sw3, &button_cb_data_3);
	init_joystick_gpio(&sw4, &button_cb_data_4);

	modem = DEVICE_DT_GET(DT_NODELABEL(quectel_bg96));
	if (!device_is_ready(modem)) {
		LOG_ERR("Modem is not ready");
		return;
	}

	LOG_INF("Running blinky");
	while (1) {
		ret = gpio_pin_toggle_dt(&led);
		/* IOTEMBSYS: Print GPIO state to console. */
		if (ret < 0) {
			return;
		}
		k_msleep(blink_interval_);
	}
}

