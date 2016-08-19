project(%{ProjectName})
cmake_minimum_required(VERSION 2.8)

set(OBJFW_ROOT "C:/MinGW/sdk/objfw-i686")
set(OBJFW_INCLUDE_DIR "${OBJFW_ROOT}/include")
set(OBJFW_LIB_DIR "${OBJFW_ROOT}/lib")
set(OBJFW_OBJC_FLAGS "-Xclang -fobjc-runtime=objfw -fexceptions -fobjc-exceptions -funwind-tables -fconstant-string-class=OFConstantString -Xclang -fno-constant-cfstrings -Xclang -fblocks")

set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} ${OBJFW_OBJC_FLAGS}")
set(CMAKE_CXX_FLAGS "${CMAKE_C_FLAGS} ${OBJFW_OBJC_FLAGS} -fcxx-exceptions")

include_directories(${OBJFW_INCLUDE_DIR})
link_directories(${OBJFW_LIB_DIR})
link_libraries(objfw m ws2_32 stdc++)

aux_source_directory(. SRC_LIST)

add_library(${PROJECT_NAME} MODULE ${SRC_LIST})
