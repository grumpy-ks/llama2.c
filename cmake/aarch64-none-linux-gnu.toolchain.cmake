#----------------------------------------------------------------------------
#  SPDX-FileCopyrightText: Copyright 2025 Grumpy KS
#  SPDX-License-Identifier: MIT
#----------------------------------------------------------------------------

set(CMAKE_C_COMPILER                aarch64-none-linux-gnu-gcc)
set(CMAKE_CXX_COMPILER              aarch64-none-linux-gnu-gcc)
set(CMAKE_SYSTEM_NAME               Generic)
set(CMAKE_CROSSCOMPILING            true)

if (NOT DEFINED CMAKE_SYSTEM_PROCESSOR AND NOT DEFINED CMAKE_SYSTEM_ARCH)
    set(CMAKE_SYSTEM_ARCH           armv8.2-a)
endif()
