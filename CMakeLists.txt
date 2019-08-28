cmake_minimum_required(VERSION 3.5)
set(CMAKE_CUDA_COMPILER  /usr/local/cuda-9.2/bin/nvcc)
set (CMAKE_CXX_STANDARD 11)
set (CUDAMEM_VERSION "0.0.1")

project(cudaMem)
include(FindCUDA)

find_package(CUDA 7.0 REQUIRED)
set(CUDA_NVCC_FLAGS ${CUDA_NVCC_FLAGS} -gencode arch=compute_30,code=sm_30)
message(STATUS "Found CUDA ${CUDA_VERSION_STRING} at ${CUDA_TOOLKIT_ROOT_DIR}")

include_directories(${CMAKE_CURRENT_SOURCE_DIR}/include)

cuda_add_executable(cudaMemCmd src/mem.cu src/cudaMem.cu)
cuda_add_library(cudaMem SHARED src/cudaMem.cu)
set_target_properties(cudaMem PROPERTIES VERSION ${CUDAMEM_VERSION})
set_target_properties(cudaMemCmd PROPERTIES VERSION ${CUDAMEM_VERSION})