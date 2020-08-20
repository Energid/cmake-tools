#********************************************************************
#        _       _         _
#  _ __ | |_  _ | |  __ _ | |__   ___
# | '__|| __|(_)| | / _` || '_ \ / __|
# | |   | |_  _ | || (_| || |_) |\__ \
# |_|    \__|(_)|_| \__,_||_.__/ |___/
#
# www.rt-labs.com
# Copyright 2017 rt-labs AB, Sweden.
#
# This software is licensed under the terms of the BSD 3-clause
# license. See the file LICENSE distributed with this software for
# full license information.
#*******************************************************************/

include_guard()

# the name of the target operating system
set(CMAKE_SYSTEM_NAME rt-kernel)

# which compiler to use
set(CMAKE_C_COMPILER $ENV{COMPILERS}/arm-eabi/bin/arm-eabi-gcc)
set(CMAKE_CXX_COMPILER $ENV{COMPILERS}/arm-eabi/bin/arm-eabi-gcc)
if(CMAKE_HOST_WIN32)
  set(CMAKE_C_COMPILER ${CMAKE_C_COMPILER}.exe)
  set(CMAKE_CXX_COMPILER ${CMAKE_CXX_COMPILER}.exe)
endif(CMAKE_HOST_WIN32)

set(ARCH imx6)
set(CPU cortex-a9-vfp)

list(APPEND MACHINE
  -mcpu=cortex-a9
  -mfpu=vfpv3-d16
  -mfloat-abi=hard
  )

add_definitions(${MACHINE})
add_link_options(${MACHINE})