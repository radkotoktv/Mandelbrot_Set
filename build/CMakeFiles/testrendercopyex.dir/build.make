# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.29

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = "C:/Program Files/CMake/bin/cmake.exe"

# The command to remove a file.
RM = "C:/Program Files/CMake/bin/cmake.exe" -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = F:/SPO/SDL2/test

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = F:/SPO/build

# Include any dependencies generated for this target.
include CMakeFiles/testrendercopyex.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/testrendercopyex.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/testrendercopyex.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/testrendercopyex.dir/flags.make

CMakeFiles/testrendercopyex.dir/testrendercopyex.c.obj: CMakeFiles/testrendercopyex.dir/flags.make
CMakeFiles/testrendercopyex.dir/testrendercopyex.c.obj: F:/SPO/SDL2/test/testrendercopyex.c
CMakeFiles/testrendercopyex.dir/testrendercopyex.c.obj: CMakeFiles/testrendercopyex.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=F:/SPO/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/testrendercopyex.dir/testrendercopyex.c.obj"
	C:/MinGW/bin/gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/testrendercopyex.dir/testrendercopyex.c.obj -MF CMakeFiles/testrendercopyex.dir/testrendercopyex.c.obj.d -o CMakeFiles/testrendercopyex.dir/testrendercopyex.c.obj -c F:/SPO/SDL2/test/testrendercopyex.c

CMakeFiles/testrendercopyex.dir/testrendercopyex.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/testrendercopyex.dir/testrendercopyex.c.i"
	C:/MinGW/bin/gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E F:/SPO/SDL2/test/testrendercopyex.c > CMakeFiles/testrendercopyex.dir/testrendercopyex.c.i

CMakeFiles/testrendercopyex.dir/testrendercopyex.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/testrendercopyex.dir/testrendercopyex.c.s"
	C:/MinGW/bin/gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S F:/SPO/SDL2/test/testrendercopyex.c -o CMakeFiles/testrendercopyex.dir/testrendercopyex.c.s

CMakeFiles/testrendercopyex.dir/testutils.c.obj: CMakeFiles/testrendercopyex.dir/flags.make
CMakeFiles/testrendercopyex.dir/testutils.c.obj: F:/SPO/SDL2/test/testutils.c
CMakeFiles/testrendercopyex.dir/testutils.c.obj: CMakeFiles/testrendercopyex.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=F:/SPO/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMakeFiles/testrendercopyex.dir/testutils.c.obj"
	C:/MinGW/bin/gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/testrendercopyex.dir/testutils.c.obj -MF CMakeFiles/testrendercopyex.dir/testutils.c.obj.d -o CMakeFiles/testrendercopyex.dir/testutils.c.obj -c F:/SPO/SDL2/test/testutils.c

CMakeFiles/testrendercopyex.dir/testutils.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/testrendercopyex.dir/testutils.c.i"
	C:/MinGW/bin/gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E F:/SPO/SDL2/test/testutils.c > CMakeFiles/testrendercopyex.dir/testutils.c.i

CMakeFiles/testrendercopyex.dir/testutils.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/testrendercopyex.dir/testutils.c.s"
	C:/MinGW/bin/gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S F:/SPO/SDL2/test/testutils.c -o CMakeFiles/testrendercopyex.dir/testutils.c.s

# Object files for target testrendercopyex
testrendercopyex_OBJECTS = \
"CMakeFiles/testrendercopyex.dir/testrendercopyex.c.obj" \
"CMakeFiles/testrendercopyex.dir/testutils.c.obj"

# External object files for target testrendercopyex
testrendercopyex_EXTERNAL_OBJECTS =

testrendercopyex.exe: CMakeFiles/testrendercopyex.dir/testrendercopyex.c.obj
testrendercopyex.exe: CMakeFiles/testrendercopyex.dir/testutils.c.obj
testrendercopyex.exe: CMakeFiles/testrendercopyex.dir/build.make
testrendercopyex.exe: CMakeFiles/testrendercopyex.dir/linkLibs.rsp
testrendercopyex.exe: CMakeFiles/testrendercopyex.dir/objects1.rsp
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=F:/SPO/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking C executable testrendercopyex.exe"
	"C:/Program Files/CMake/bin/cmake.exe" -E rm -f CMakeFiles/testrendercopyex.dir/objects.a
	C:/MinGW/bin/ar.exe qc CMakeFiles/testrendercopyex.dir/objects.a @CMakeFiles/testrendercopyex.dir/objects1.rsp
	C:/MinGW/bin/gcc.exe -g -Wl,--whole-archive CMakeFiles/testrendercopyex.dir/objects.a -Wl,--no-whole-archive -o testrendercopyex.exe -Wl,--out-implib,libtestrendercopyex.dll.a -Wl,--major-image-version,0,--minor-image-version,0 @CMakeFiles/testrendercopyex.dir/linkLibs.rsp

# Rule to build all files generated by this target.
CMakeFiles/testrendercopyex.dir/build: testrendercopyex.exe
.PHONY : CMakeFiles/testrendercopyex.dir/build

CMakeFiles/testrendercopyex.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/testrendercopyex.dir/cmake_clean.cmake
.PHONY : CMakeFiles/testrendercopyex.dir/clean

CMakeFiles/testrendercopyex.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" F:/SPO/SDL2/test F:/SPO/SDL2/test F:/SPO/build F:/SPO/build F:/SPO/build/CMakeFiles/testrendercopyex.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/testrendercopyex.dir/depend

