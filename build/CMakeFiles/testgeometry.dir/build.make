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
include CMakeFiles/testgeometry.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/testgeometry.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/testgeometry.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/testgeometry.dir/flags.make

CMakeFiles/testgeometry.dir/testgeometry.c.obj: CMakeFiles/testgeometry.dir/flags.make
CMakeFiles/testgeometry.dir/testgeometry.c.obj: F:/SPO/SDL2/test/testgeometry.c
CMakeFiles/testgeometry.dir/testgeometry.c.obj: CMakeFiles/testgeometry.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=F:/SPO/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/testgeometry.dir/testgeometry.c.obj"
	C:/MinGW/bin/gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/testgeometry.dir/testgeometry.c.obj -MF CMakeFiles/testgeometry.dir/testgeometry.c.obj.d -o CMakeFiles/testgeometry.dir/testgeometry.c.obj -c F:/SPO/SDL2/test/testgeometry.c

CMakeFiles/testgeometry.dir/testgeometry.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/testgeometry.dir/testgeometry.c.i"
	C:/MinGW/bin/gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E F:/SPO/SDL2/test/testgeometry.c > CMakeFiles/testgeometry.dir/testgeometry.c.i

CMakeFiles/testgeometry.dir/testgeometry.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/testgeometry.dir/testgeometry.c.s"
	C:/MinGW/bin/gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S F:/SPO/SDL2/test/testgeometry.c -o CMakeFiles/testgeometry.dir/testgeometry.c.s

CMakeFiles/testgeometry.dir/testutils.c.obj: CMakeFiles/testgeometry.dir/flags.make
CMakeFiles/testgeometry.dir/testutils.c.obj: F:/SPO/SDL2/test/testutils.c
CMakeFiles/testgeometry.dir/testutils.c.obj: CMakeFiles/testgeometry.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=F:/SPO/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMakeFiles/testgeometry.dir/testutils.c.obj"
	C:/MinGW/bin/gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/testgeometry.dir/testutils.c.obj -MF CMakeFiles/testgeometry.dir/testutils.c.obj.d -o CMakeFiles/testgeometry.dir/testutils.c.obj -c F:/SPO/SDL2/test/testutils.c

CMakeFiles/testgeometry.dir/testutils.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/testgeometry.dir/testutils.c.i"
	C:/MinGW/bin/gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E F:/SPO/SDL2/test/testutils.c > CMakeFiles/testgeometry.dir/testutils.c.i

CMakeFiles/testgeometry.dir/testutils.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/testgeometry.dir/testutils.c.s"
	C:/MinGW/bin/gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S F:/SPO/SDL2/test/testutils.c -o CMakeFiles/testgeometry.dir/testutils.c.s

# Object files for target testgeometry
testgeometry_OBJECTS = \
"CMakeFiles/testgeometry.dir/testgeometry.c.obj" \
"CMakeFiles/testgeometry.dir/testutils.c.obj"

# External object files for target testgeometry
testgeometry_EXTERNAL_OBJECTS =

testgeometry.exe: CMakeFiles/testgeometry.dir/testgeometry.c.obj
testgeometry.exe: CMakeFiles/testgeometry.dir/testutils.c.obj
testgeometry.exe: CMakeFiles/testgeometry.dir/build.make
testgeometry.exe: CMakeFiles/testgeometry.dir/linkLibs.rsp
testgeometry.exe: CMakeFiles/testgeometry.dir/objects1.rsp
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=F:/SPO/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking C executable testgeometry.exe"
	"C:/Program Files/CMake/bin/cmake.exe" -E rm -f CMakeFiles/testgeometry.dir/objects.a
	C:/MinGW/bin/ar.exe qc CMakeFiles/testgeometry.dir/objects.a @CMakeFiles/testgeometry.dir/objects1.rsp
	C:/MinGW/bin/gcc.exe -g -Wl,--whole-archive CMakeFiles/testgeometry.dir/objects.a -Wl,--no-whole-archive -o testgeometry.exe -Wl,--out-implib,libtestgeometry.dll.a -Wl,--major-image-version,0,--minor-image-version,0 @CMakeFiles/testgeometry.dir/linkLibs.rsp

# Rule to build all files generated by this target.
CMakeFiles/testgeometry.dir/build: testgeometry.exe
.PHONY : CMakeFiles/testgeometry.dir/build

CMakeFiles/testgeometry.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/testgeometry.dir/cmake_clean.cmake
.PHONY : CMakeFiles/testgeometry.dir/clean

CMakeFiles/testgeometry.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" F:/SPO/SDL2/test F:/SPO/SDL2/test F:/SPO/build F:/SPO/build F:/SPO/build/CMakeFiles/testgeometry.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/testgeometry.dir/depend

