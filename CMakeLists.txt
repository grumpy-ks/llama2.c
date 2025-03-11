#
# SPDX-License-Identifier: MIT
#
cmake_minimum_required(VERSION 3.23)

# Define project
project(llama2.c
        HOMEPAGE_URL    https://github.com/karpathy/llama2.c
        VERSION         0.0.1
        LANGUAGES       C ASM
        DESCRIPTION     "Inference for LLaMA-2 transformer model in pure C")

# Add targets and link to math library
add_executable(run  run.c)
target_link_libraries(run PRIVATE m)

add_executable(runq runq.c)
target_link_libraries(runq PRIVATE m)

set(MODEL_URL_BASE "https://huggingface.co/karpathy/tinyllamas/resolve/main")

# Download model files if they don't exist already
if (NOT EXISTS ${CMAKE_SOURCE_DIR}/stories15M.bin)
    file(DOWNLOAD
        ${MODEL_URL_BASE}/stories15M.bin
        ${CMAKE_SOURCE_DIR}/stories15M.bin
        SHOW_PROGRESS ON
        TIMEOUT       20)
endif()

if (NOT EXISTS ${CMAKE_SOURCE_DIR}/stories15M.pt)
    file(DOWNLOAD
        ${MODEL_URL_BASE}/stories15M.pt
        ${CMAKE_SOURCE_DIR}/stories15M.pt
        SHOW_PROGRESS ON
        TIMEOUT       20)
endif()
