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
  include("D:/UW_assignment/firmware_workspace/assignment_10/twister-out/qemu_cortex_m0/lib/custom_lib/lib.custom_lib.non_default/zephyr/arch/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/UW_assignment/firmware_workspace/assignment_10/twister-out/qemu_cortex_m0/lib/custom_lib/lib.custom_lib.non_default/zephyr/lib/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/UW_assignment/firmware_workspace/assignment_10/twister-out/qemu_cortex_m0/lib/custom_lib/lib.custom_lib.non_default/zephyr/soc/arm/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/UW_assignment/firmware_workspace/assignment_10/twister-out/qemu_cortex_m0/lib/custom_lib/lib.custom_lib.non_default/zephyr/boards/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/UW_assignment/firmware_workspace/assignment_10/twister-out/qemu_cortex_m0/lib/custom_lib/lib.custom_lib.non_default/zephyr/subsys/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/UW_assignment/firmware_workspace/assignment_10/twister-out/qemu_cortex_m0/lib/custom_lib/lib.custom_lib.non_default/zephyr/drivers/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/UW_assignment/firmware_workspace/assignment_10/twister-out/qemu_cortex_m0/lib/custom_lib/lib.custom_lib.non_default/modules/assignment_9/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/UW_assignment/firmware_workspace/assignment_10/twister-out/qemu_cortex_m0/lib/custom_lib/lib.custom_lib.non_default/modules/canopennode/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/UW_assignment/firmware_workspace/assignment_10/twister-out/qemu_cortex_m0/lib/custom_lib/lib.custom_lib.non_default/modules/chre/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/UW_assignment/firmware_workspace/assignment_10/twister-out/qemu_cortex_m0/lib/custom_lib/lib.custom_lib.non_default/modules/cmsis/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/UW_assignment/firmware_workspace/assignment_10/twister-out/qemu_cortex_m0/lib/custom_lib/lib.custom_lib.non_default/modules/fatfs/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/UW_assignment/firmware_workspace/assignment_10/twister-out/qemu_cortex_m0/lib/custom_lib/lib.custom_lib.non_default/modules/altera/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/UW_assignment/firmware_workspace/assignment_10/twister-out/qemu_cortex_m0/lib/custom_lib/lib.custom_lib.non_default/modules/atmel/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/UW_assignment/firmware_workspace/assignment_10/twister-out/qemu_cortex_m0/lib/custom_lib/lib.custom_lib.non_default/modules/hal_espressif/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/UW_assignment/firmware_workspace/assignment_10/twister-out/qemu_cortex_m0/lib/custom_lib/lib.custom_lib.non_default/modules/hal_ethos_u/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/UW_assignment/firmware_workspace/assignment_10/twister-out/qemu_cortex_m0/lib/custom_lib/lib.custom_lib.non_default/modules/hal_gigadevice/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/UW_assignment/firmware_workspace/assignment_10/twister-out/qemu_cortex_m0/lib/custom_lib/lib.custom_lib.non_default/modules/hal_infineon/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/UW_assignment/firmware_workspace/assignment_10/twister-out/qemu_cortex_m0/lib/custom_lib/lib.custom_lib.non_default/modules/microchip/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/UW_assignment/firmware_workspace/assignment_10/twister-out/qemu_cortex_m0/lib/custom_lib/lib.custom_lib.non_default/modules/hal_nordic/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/UW_assignment/firmware_workspace/assignment_10/twister-out/qemu_cortex_m0/lib/custom_lib/lib.custom_lib.non_default/modules/nuvoton/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/UW_assignment/firmware_workspace/assignment_10/twister-out/qemu_cortex_m0/lib/custom_lib/lib.custom_lib.non_default/modules/hal_nxp/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/UW_assignment/firmware_workspace/assignment_10/twister-out/qemu_cortex_m0/lib/custom_lib/lib.custom_lib.non_default/modules/openisa/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/UW_assignment/firmware_workspace/assignment_10/twister-out/qemu_cortex_m0/lib/custom_lib/lib.custom_lib.non_default/modules/quicklogic/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/UW_assignment/firmware_workspace/assignment_10/twister-out/qemu_cortex_m0/lib/custom_lib/lib.custom_lib.non_default/modules/hal_renesas/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/UW_assignment/firmware_workspace/assignment_10/twister-out/qemu_cortex_m0/lib/custom_lib/lib.custom_lib.non_default/modules/hal_rpi_pico/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/UW_assignment/firmware_workspace/assignment_10/twister-out/qemu_cortex_m0/lib/custom_lib/lib.custom_lib.non_default/modules/silabs/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/UW_assignment/firmware_workspace/assignment_10/twister-out/qemu_cortex_m0/lib/custom_lib/lib.custom_lib.non_default/modules/st/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/UW_assignment/firmware_workspace/assignment_10/twister-out/qemu_cortex_m0/lib/custom_lib/lib.custom_lib.non_default/modules/stm32/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/UW_assignment/firmware_workspace/assignment_10/twister-out/qemu_cortex_m0/lib/custom_lib/lib.custom_lib.non_default/modules/hal_telink/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/UW_assignment/firmware_workspace/assignment_10/twister-out/qemu_cortex_m0/lib/custom_lib/lib.custom_lib.non_default/modules/ti/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/UW_assignment/firmware_workspace/assignment_10/twister-out/qemu_cortex_m0/lib/custom_lib/lib.custom_lib.non_default/modules/hal_wurthelektronik/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/UW_assignment/firmware_workspace/assignment_10/twister-out/qemu_cortex_m0/lib/custom_lib/lib.custom_lib.non_default/modules/xtensa/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/UW_assignment/firmware_workspace/assignment_10/twister-out/qemu_cortex_m0/lib/custom_lib/lib.custom_lib.non_default/modules/libmetal/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/UW_assignment/firmware_workspace/assignment_10/twister-out/qemu_cortex_m0/lib/custom_lib/lib.custom_lib.non_default/modules/liblc3/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/UW_assignment/firmware_workspace/assignment_10/twister-out/qemu_cortex_m0/lib/custom_lib/lib.custom_lib.non_default/modules/littlefs/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/UW_assignment/firmware_workspace/assignment_10/twister-out/qemu_cortex_m0/lib/custom_lib/lib.custom_lib.non_default/modules/loramac-node/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/UW_assignment/firmware_workspace/assignment_10/twister-out/qemu_cortex_m0/lib/custom_lib/lib.custom_lib.non_default/modules/lvgl/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/UW_assignment/firmware_workspace/assignment_10/twister-out/qemu_cortex_m0/lib/custom_lib/lib.custom_lib.non_default/modules/lz4/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/UW_assignment/firmware_workspace/assignment_10/twister-out/qemu_cortex_m0/lib/custom_lib/lib.custom_lib.non_default/modules/mbedtls/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/UW_assignment/firmware_workspace/assignment_10/twister-out/qemu_cortex_m0/lib/custom_lib/lib.custom_lib.non_default/modules/mcuboot/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/UW_assignment/firmware_workspace/assignment_10/twister-out/qemu_cortex_m0/lib/custom_lib/lib.custom_lib.non_default/modules/mipi-sys-t/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/UW_assignment/firmware_workspace/assignment_10/twister-out/qemu_cortex_m0/lib/custom_lib/lib.custom_lib.non_default/modules/nanopb/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/UW_assignment/firmware_workspace/assignment_10/twister-out/qemu_cortex_m0/lib/custom_lib/lib.custom_lib.non_default/modules/nrf_hw_models/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/UW_assignment/firmware_workspace/assignment_10/twister-out/qemu_cortex_m0/lib/custom_lib/lib.custom_lib.non_default/modules/open-amp/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/UW_assignment/firmware_workspace/assignment_10/twister-out/qemu_cortex_m0/lib/custom_lib/lib.custom_lib.non_default/modules/openthread/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/UW_assignment/firmware_workspace/assignment_10/twister-out/qemu_cortex_m0/lib/custom_lib/lib.custom_lib.non_default/modules/picolibc/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/UW_assignment/firmware_workspace/assignment_10/twister-out/qemu_cortex_m0/lib/custom_lib/lib.custom_lib.non_default/modules/segger/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/UW_assignment/firmware_workspace/assignment_10/twister-out/qemu_cortex_m0/lib/custom_lib/lib.custom_lib.non_default/modules/sof/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/UW_assignment/firmware_workspace/assignment_10/twister-out/qemu_cortex_m0/lib/custom_lib/lib.custom_lib.non_default/modules/tflite-micro/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/UW_assignment/firmware_workspace/assignment_10/twister-out/qemu_cortex_m0/lib/custom_lib/lib.custom_lib.non_default/modules/tinycrypt/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/UW_assignment/firmware_workspace/assignment_10/twister-out/qemu_cortex_m0/lib/custom_lib/lib.custom_lib.non_default/modules/TraceRecorder/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/UW_assignment/firmware_workspace/assignment_10/twister-out/qemu_cortex_m0/lib/custom_lib/lib.custom_lib.non_default/modules/trusted-firmware-m/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/UW_assignment/firmware_workspace/assignment_10/twister-out/qemu_cortex_m0/lib/custom_lib/lib.custom_lib.non_default/modules/trusted-firmware-a/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/UW_assignment/firmware_workspace/assignment_10/twister-out/qemu_cortex_m0/lib/custom_lib/lib.custom_lib.non_default/modules/uoscore-uedhoc/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/UW_assignment/firmware_workspace/assignment_10/twister-out/qemu_cortex_m0/lib/custom_lib/lib.custom_lib.non_default/modules/zcbor/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/UW_assignment/firmware_workspace/assignment_10/twister-out/qemu_cortex_m0/lib/custom_lib/lib.custom_lib.non_default/modules/zscilib/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/UW_assignment/firmware_workspace/assignment_10/twister-out/qemu_cortex_m0/lib/custom_lib/lib.custom_lib.non_default/modules/thrift/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/UW_assignment/firmware_workspace/assignment_10/twister-out/qemu_cortex_m0/lib/custom_lib/lib.custom_lib.non_default/zephyr/kernel/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/UW_assignment/firmware_workspace/assignment_10/twister-out/qemu_cortex_m0/lib/custom_lib/lib.custom_lib.non_default/zephyr/cmake/flash/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/UW_assignment/firmware_workspace/assignment_10/twister-out/qemu_cortex_m0/lib/custom_lib/lib.custom_lib.non_default/zephyr/cmake/usage/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/UW_assignment/firmware_workspace/assignment_10/twister-out/qemu_cortex_m0/lib/custom_lib/lib.custom_lib.non_default/zephyr/cmake/reports/cmake_install.cmake")
endif()

