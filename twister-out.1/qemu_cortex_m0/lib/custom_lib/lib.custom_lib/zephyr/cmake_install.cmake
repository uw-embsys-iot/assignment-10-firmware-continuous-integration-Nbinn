# Install script for directory: D:/UW_assignment/firmware_workspace/zephyr

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "C:/Program Files (x86)/Zephyr-Kernel")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "TRUE")
endif()

# Set default install directory permissions.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "C:/Users/ThoNhan/zephyr-sdk-0.16.4/arm-zephyr-eabi/bin/arm-zephyr-eabi-objdump.exe")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/UW_assignment/firmware_workspace/assignment_10/twister-out/qemu_cortex_m0/lib/custom_lib/lib.custom_lib/zephyr/arch/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/UW_assignment/firmware_workspace/assignment_10/twister-out/qemu_cortex_m0/lib/custom_lib/lib.custom_lib/zephyr/lib/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/UW_assignment/firmware_workspace/assignment_10/twister-out/qemu_cortex_m0/lib/custom_lib/lib.custom_lib/zephyr/soc/arm/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/UW_assignment/firmware_workspace/assignment_10/twister-out/qemu_cortex_m0/lib/custom_lib/lib.custom_lib/zephyr/boards/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/UW_assignment/firmware_workspace/assignment_10/twister-out/qemu_cortex_m0/lib/custom_lib/lib.custom_lib/zephyr/subsys/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/UW_assignment/firmware_workspace/assignment_10/twister-out/qemu_cortex_m0/lib/custom_lib/lib.custom_lib/zephyr/drivers/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/UW_assignment/firmware_workspace/assignment_10/twister-out/qemu_cortex_m0/lib/custom_lib/lib.custom_lib/modules/assignment_9/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/UW_assignment/firmware_workspace/assignment_10/twister-out/qemu_cortex_m0/lib/custom_lib/lib.custom_lib/modules/canopennode/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/UW_assignment/firmware_workspace/assignment_10/twister-out/qemu_cortex_m0/lib/custom_lib/lib.custom_lib/modules/chre/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/UW_assignment/firmware_workspace/assignment_10/twister-out/qemu_cortex_m0/lib/custom_lib/lib.custom_lib/modules/cmsis/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/UW_assignment/firmware_workspace/assignment_10/twister-out/qemu_cortex_m0/lib/custom_lib/lib.custom_lib/modules/fatfs/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/UW_assignment/firmware_workspace/assignment_10/twister-out/qemu_cortex_m0/lib/custom_lib/lib.custom_lib/modules/altera/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/UW_assignment/firmware_workspace/assignment_10/twister-out/qemu_cortex_m0/lib/custom_lib/lib.custom_lib/modules/atmel/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/UW_assignment/firmware_workspace/assignment_10/twister-out/qemu_cortex_m0/lib/custom_lib/lib.custom_lib/modules/hal_espressif/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/UW_assignment/firmware_workspace/assignment_10/twister-out/qemu_cortex_m0/lib/custom_lib/lib.custom_lib/modules/hal_ethos_u/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/UW_assignment/firmware_workspace/assignment_10/twister-out/qemu_cortex_m0/lib/custom_lib/lib.custom_lib/modules/hal_gigadevice/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/UW_assignment/firmware_workspace/assignment_10/twister-out/qemu_cortex_m0/lib/custom_lib/lib.custom_lib/modules/hal_infineon/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/UW_assignment/firmware_workspace/assignment_10/twister-out/qemu_cortex_m0/lib/custom_lib/lib.custom_lib/modules/microchip/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/UW_assignment/firmware_workspace/assignment_10/twister-out/qemu_cortex_m0/lib/custom_lib/lib.custom_lib/modules/hal_nordic/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/UW_assignment/firmware_workspace/assignment_10/twister-out/qemu_cortex_m0/lib/custom_lib/lib.custom_lib/modules/nuvoton/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/UW_assignment/firmware_workspace/assignment_10/twister-out/qemu_cortex_m0/lib/custom_lib/lib.custom_lib/modules/hal_nxp/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/UW_assignment/firmware_workspace/assignment_10/twister-out/qemu_cortex_m0/lib/custom_lib/lib.custom_lib/modules/openisa/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/UW_assignment/firmware_workspace/assignment_10/twister-out/qemu_cortex_m0/lib/custom_lib/lib.custom_lib/modules/quicklogic/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/UW_assignment/firmware_workspace/assignment_10/twister-out/qemu_cortex_m0/lib/custom_lib/lib.custom_lib/modules/hal_renesas/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/UW_assignment/firmware_workspace/assignment_10/twister-out/qemu_cortex_m0/lib/custom_lib/lib.custom_lib/modules/hal_rpi_pico/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/UW_assignment/firmware_workspace/assignment_10/twister-out/qemu_cortex_m0/lib/custom_lib/lib.custom_lib/modules/silabs/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/UW_assignment/firmware_workspace/assignment_10/twister-out/qemu_cortex_m0/lib/custom_lib/lib.custom_lib/modules/st/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/UW_assignment/firmware_workspace/assignment_10/twister-out/qemu_cortex_m0/lib/custom_lib/lib.custom_lib/modules/stm32/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/UW_assignment/firmware_workspace/assignment_10/twister-out/qemu_cortex_m0/lib/custom_lib/lib.custom_lib/modules/hal_telink/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/UW_assignment/firmware_workspace/assignment_10/twister-out/qemu_cortex_m0/lib/custom_lib/lib.custom_lib/modules/ti/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/UW_assignment/firmware_workspace/assignment_10/twister-out/qemu_cortex_m0/lib/custom_lib/lib.custom_lib/modules/hal_wurthelektronik/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/UW_assignment/firmware_workspace/assignment_10/twister-out/qemu_cortex_m0/lib/custom_lib/lib.custom_lib/modules/xtensa/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/UW_assignment/firmware_workspace/assignment_10/twister-out/qemu_cortex_m0/lib/custom_lib/lib.custom_lib/modules/libmetal/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/UW_assignment/firmware_workspace/assignment_10/twister-out/qemu_cortex_m0/lib/custom_lib/lib.custom_lib/modules/liblc3/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/UW_assignment/firmware_workspace/assignment_10/twister-out/qemu_cortex_m0/lib/custom_lib/lib.custom_lib/modules/littlefs/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/UW_assignment/firmware_workspace/assignment_10/twister-out/qemu_cortex_m0/lib/custom_lib/lib.custom_lib/modules/loramac-node/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/UW_assignment/firmware_workspace/assignment_10/twister-out/qemu_cortex_m0/lib/custom_lib/lib.custom_lib/modules/lvgl/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/UW_assignment/firmware_workspace/assignment_10/twister-out/qemu_cortex_m0/lib/custom_lib/lib.custom_lib/modules/lz4/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/UW_assignment/firmware_workspace/assignment_10/twister-out/qemu_cortex_m0/lib/custom_lib/lib.custom_lib/modules/mbedtls/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/UW_assignment/firmware_workspace/assignment_10/twister-out/qemu_cortex_m0/lib/custom_lib/lib.custom_lib/modules/mcuboot/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/UW_assignment/firmware_workspace/assignment_10/twister-out/qemu_cortex_m0/lib/custom_lib/lib.custom_lib/modules/mipi-sys-t/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/UW_assignment/firmware_workspace/assignment_10/twister-out/qemu_cortex_m0/lib/custom_lib/lib.custom_lib/modules/nanopb/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/UW_assignment/firmware_workspace/assignment_10/twister-out/qemu_cortex_m0/lib/custom_lib/lib.custom_lib/modules/nrf_hw_models/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/UW_assignment/firmware_workspace/assignment_10/twister-out/qemu_cortex_m0/lib/custom_lib/lib.custom_lib/modules/open-amp/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/UW_assignment/firmware_workspace/assignment_10/twister-out/qemu_cortex_m0/lib/custom_lib/lib.custom_lib/modules/openthread/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/UW_assignment/firmware_workspace/assignment_10/twister-out/qemu_cortex_m0/lib/custom_lib/lib.custom_lib/modules/picolibc/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/UW_assignment/firmware_workspace/assignment_10/twister-out/qemu_cortex_m0/lib/custom_lib/lib.custom_lib/modules/segger/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/UW_assignment/firmware_workspace/assignment_10/twister-out/qemu_cortex_m0/lib/custom_lib/lib.custom_lib/modules/sof/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/UW_assignment/firmware_workspace/assignment_10/twister-out/qemu_cortex_m0/lib/custom_lib/lib.custom_lib/modules/tflite-micro/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/UW_assignment/firmware_workspace/assignment_10/twister-out/qemu_cortex_m0/lib/custom_lib/lib.custom_lib/modules/tinycrypt/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/UW_assignment/firmware_workspace/assignment_10/twister-out/qemu_cortex_m0/lib/custom_lib/lib.custom_lib/modules/TraceRecorder/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/UW_assignment/firmware_workspace/assignment_10/twister-out/qemu_cortex_m0/lib/custom_lib/lib.custom_lib/modules/trusted-firmware-m/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/UW_assignment/firmware_workspace/assignment_10/twister-out/qemu_cortex_m0/lib/custom_lib/lib.custom_lib/modules/trusted-firmware-a/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/UW_assignment/firmware_workspace/assignment_10/twister-out/qemu_cortex_m0/lib/custom_lib/lib.custom_lib/modules/uoscore-uedhoc/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/UW_assignment/firmware_workspace/assignment_10/twister-out/qemu_cortex_m0/lib/custom_lib/lib.custom_lib/modules/zcbor/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/UW_assignment/firmware_workspace/assignment_10/twister-out/qemu_cortex_m0/lib/custom_lib/lib.custom_lib/modules/zscilib/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/UW_assignment/firmware_workspace/assignment_10/twister-out/qemu_cortex_m0/lib/custom_lib/lib.custom_lib/modules/thrift/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/UW_assignment/firmware_workspace/assignment_10/twister-out/qemu_cortex_m0/lib/custom_lib/lib.custom_lib/zephyr/kernel/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/UW_assignment/firmware_workspace/assignment_10/twister-out/qemu_cortex_m0/lib/custom_lib/lib.custom_lib/zephyr/cmake/flash/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/UW_assignment/firmware_workspace/assignment_10/twister-out/qemu_cortex_m0/lib/custom_lib/lib.custom_lib/zephyr/cmake/usage/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/UW_assignment/firmware_workspace/assignment_10/twister-out/qemu_cortex_m0/lib/custom_lib/lib.custom_lib/zephyr/cmake/reports/cmake_install.cmake")
endif()

