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
include CMakeFiles/testcustomcursor.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/testcustomcursor.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/testcustomcursor.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/testcustomcursor.dir/flags.make

CMakeFiles/testcustomcursor.dir/testcustomcursor.c.obj: CMakeFiles/testcustomcursor.dir/flags.make
CMakeFiles/testcustomcursor.dir/testcustomcursor.c.obj: F:/SPO/SDL2/test/testcustomcursor.c
CMakeFiles/testcustomcursor.dir/testcustomcursor.c.obj: CMakeFiles/testcustomcursor.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=F:/SPO/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/testcustomcursor.dir/testcustomcursor.c.obj"
	C:/MinGW/bin/gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/testcustomcursor.dir/testcustomcursor.c.obj -MF CMakeFiles/testcustomcursor.dir/testcustomcursor.c.obj.d -o CMakeFiles/testcustomcursor.dir/testcustomcursor.c.obj -c F:/SPO/SDL2/test/testcustomcursor.c

CMakeFiles/testcustomcursor.dir/testcustomcursor.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/testcustomcursor.dir/testcustomcursor.c.i"
	C:/MinGW/bin/gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E F:/SPO/SDL2/test/testcustomcursor.c > CMakeFiles/testcustomcursor.dir/testcustomcursor.c.i

CMakeFiles/testcustomcursor.dir/testcustomcursor.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/testcustomcursor.dir/testcustomcursor.c.s"
	C:/MinGW/bin/gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S F:/SPO/SDL2/test/testcustomcursor.c -o CMakeFiles/testcustomcursor.dir/testcustomcursor.c.s

# Object files for target testcustomcursor
testcustomcursor_OBJECTS = \
"CMakeFiles/testcustomcursor.dir/testcustomcursor.c.obj"

# External object files for target testcustomcursor
testcustomcursor_EXTERNAL_OBJECTS =

testcustomcursor.exe: CMakeFiles/testcustomcursor.dir/testcustomcursor.c.obj
testcustomcursor.exe: CMakeFiles/testcustomcursor.dir/build.make
testcustomcursor.exe: CMakeFiles/testcustomcursor.dir/linkLibs.rsp
testcustomcursor.exe: CMakeFiles/testcustomcursor.dir/objects1.rsp
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=F:/SPO/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable testcustomcursor.exe"
	"C:/Program Files/CMake/bin/cmake.exe" -E rm -f CMakeFiles/testcustomcursor.dir/objects.a
	C:/MinGW/bin/ar.exe qc CMakeFiles/testcustomcursor.dir/objects.a @CMakeFiles/testcustomcursor.dir/objects1.rsp
	C:/MinGW/bin/gcc.exe -g -Wl,--whole-archive CMakeFiles/testcustomcursor.dir/objects.a -Wl,--no-whole-archive -o testcustomcursor.exe -Wl,--out-implib,libtestcustomcursor.dll.a -Wl,--major-image-version,0,--minor-image-version,0 @CMakeFiles/testcustomcursor.dir/linkLibs.rsp

# Rule to build all files generated by this target.
CMakeFiles/testcustomcursor.dir/build: testcustomcursor.exe
.PHONY : CMakeFiles/testcustomcursor.dir/build

CMakeFiles/testcustomcursor.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/testcustomcursor.dir/cmake_clean.cmake
.PHONY : CMakeFiles/testcustomcursor.dir/clean

CMakeFiles/testcustomcursor.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" F:/SPO/SDL2/test F:/SPO/SDL2/test F:/SPO/build F:/SPO/build F:/SPO/build/CMakeFiles/testcustomcursor.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/testcustomcursor.dir/depend
