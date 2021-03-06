# CMake 最低版本号要求
cmake_minimum_required (VERSION 2.8)
project (Demo1)
# 不带引号
    #当编译一个需要第三方库的项目时，需要知道： 
    #去哪找头文件（.h），-I（GCC） 
    #INCLUDE_DIRECTORIES()
    #去哪找库文件（.so/.dll/.lib/.dylib/...），-L（GCC） 
    #LINK_DIRECTORIES()
    #需要链接的库文件的名字：-l（GCC） 
    #LINK_LIBRARIES(库名称即可)

include_directories(/Users/baidu/zhangsen/rd/bin/include)
link_directories(/Users/baidu/zhangsen/rd/bin/lib)
link_libraries(geos_c)
set (Demo_VERSION_MAJOR 1)
set (Demo_VERSION_MINOR 0)
set(CMAKE_BUILD_TYPE "Debug")
set(CMAKE_CXX_FLAGS_DEBUG "$ENV{CXXFLAGS} -O0 -Wall -g -ggdb")
set(CMAKE_CXX_FLAGS_RELEASE "$ENV{CXXFLAGS} -O3 -Wall")
aux_source_directory(. DIR_SRCS)
#add_executable(Demo ${DIR_SRCS})


# 加入一个配置头文件，用于处理 CMake 对源码的设置
configure_file (
  "${PROJECT_SOURCE_DIR}/config.h.in"
  "${PROJECT_BINARY_DIR}/config.h"
  )

# 是否使用自己的 MathFunctions 库
option (USE_MYMATH
       "Use provided math implementation" ON)

# 添加 math 子目录
add_subdirectory(math)
add_executable(Demo main.cc)

target_link_libraries(Demo MathFunctions)

install (TARGETS Demo DESTINATION bin)
install (FILES "${PROJECT_BINARY_DIR}/config.h"
         DESTINATION include)

install (TARGETS Demo DESTINATION bin)
install (FILES MathFunctions.h DESTINATION include)
install (FILES "${PROJECT_BINARY_DIR}/config.h"
         DESTINATION include)

enable_testing()

add_test (test_run Demo 5 4)
add_test (test_usage Demo)
set_tests_properties (test_usage PROPERTIES PASS_REGULAR_EXPRESSION "Usage: .* base exponent")


include (InstallRequiredSystemLibraries)
set (CPACK_PACKAGE_VERSION_MAJOR "${Demo_VERSION_MAJOR}")
set (CPACK_PACKAGE_VERSION_MINOR "${Demo_VERSION_MINOR}")
include (CPack)
