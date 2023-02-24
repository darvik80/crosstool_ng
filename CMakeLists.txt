cmake_minimum_required(VERSION 3.10)
project(crosstool_ng)

set(CMAKE_CXX_STANDARD 17)

set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++17")
if (UNIX)
    set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -fPIC")
endif ()

set(Boost_USE_STATIC_LIBS   ON)
add_definitions(-DBOOST_STACKTRACE_GNU_SOURCE_NOT_REQUIRED -DBOOST_STACKTRACE_USE_ADDR2LINE)

SET(CMAKE_EXE_LINKER_FLAGS "${CMAKE_EXE_LINKER_FLAGS} -static")

include_directories(
        /opt/include
)

link_directories(
        /opt/lib
)

add_executable(crosstool_ng main.cpp)
target_link_libraries(crosstool_ng fmt boost_system)
