# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.9

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/local/bin/cmake

# The command to remove a file.
RM = /usr/local/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/baidu/zhangsen/zhangtuo/computer/hellow

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/baidu/zhangsen/zhangtuo/computer/hellow

# Include any dependencies generated for this target.
include CMakeFiles/hellos.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/hellos.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/hellos.dir/flags.make

CMakeFiles/hellos.dir/hello.c.o: CMakeFiles/hellos.dir/flags.make
CMakeFiles/hellos.dir/hello.c.o: hello.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/baidu/zhangsen/zhangtuo/computer/hellow/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/hellos.dir/hello.c.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/hellos.dir/hello.c.o   -c /Users/baidu/zhangsen/zhangtuo/computer/hellow/hello.c

CMakeFiles/hellos.dir/hello.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/hellos.dir/hello.c.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/baidu/zhangsen/zhangtuo/computer/hellow/hello.c > CMakeFiles/hellos.dir/hello.c.i

CMakeFiles/hellos.dir/hello.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/hellos.dir/hello.c.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/baidu/zhangsen/zhangtuo/computer/hellow/hello.c -o CMakeFiles/hellos.dir/hello.c.s

CMakeFiles/hellos.dir/hello.c.o.requires:

.PHONY : CMakeFiles/hellos.dir/hello.c.o.requires

CMakeFiles/hellos.dir/hello.c.o.provides: CMakeFiles/hellos.dir/hello.c.o.requires
	$(MAKE) -f CMakeFiles/hellos.dir/build.make CMakeFiles/hellos.dir/hello.c.o.provides.build
.PHONY : CMakeFiles/hellos.dir/hello.c.o.provides

CMakeFiles/hellos.dir/hello.c.o.provides.build: CMakeFiles/hellos.dir/hello.c.o


# Object files for target hellos
hellos_OBJECTS = \
"CMakeFiles/hellos.dir/hello.c.o"

# External object files for target hellos
hellos_EXTERNAL_OBJECTS =

libhellos.a: CMakeFiles/hellos.dir/hello.c.o
libhellos.a: CMakeFiles/hellos.dir/build.make
libhellos.a: CMakeFiles/hellos.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/baidu/zhangsen/zhangtuo/computer/hellow/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C static library libhellos.a"
	$(CMAKE_COMMAND) -P CMakeFiles/hellos.dir/cmake_clean_target.cmake
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/hellos.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/hellos.dir/build: libhellos.a

.PHONY : CMakeFiles/hellos.dir/build

CMakeFiles/hellos.dir/requires: CMakeFiles/hellos.dir/hello.c.o.requires

.PHONY : CMakeFiles/hellos.dir/requires

CMakeFiles/hellos.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/hellos.dir/cmake_clean.cmake
.PHONY : CMakeFiles/hellos.dir/clean

CMakeFiles/hellos.dir/depend:
	cd /Users/baidu/zhangsen/zhangtuo/computer/hellow && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/baidu/zhangsen/zhangtuo/computer/hellow /Users/baidu/zhangsen/zhangtuo/computer/hellow /Users/baidu/zhangsen/zhangtuo/computer/hellow /Users/baidu/zhangsen/zhangtuo/computer/hellow /Users/baidu/zhangsen/zhangtuo/computer/hellow/CMakeFiles/hellos.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/hellos.dir/depend

