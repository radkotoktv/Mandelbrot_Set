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
include CMakeFiles/testfilesystem_pre.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/testfilesystem_pre.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/testfilesystem_pre.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/testfilesystem_pre.dir/flags.make

CMakeFiles/testfilesystem_pre.dir/testfilesystem_pre.c.obj: CMakeFiles/testfilesystem_pre.dir/flags.make
CMakeFiles/testfilesystem_pre.dir/testfilesystem_pre.c.obj: F:/SPO/SDL2/test/testfilesystem_pre.c
CMakeFiles/testfilesystem_pre.dir/testfilesystem_pre.c.obj: CMakeFiles/testfilesystem_pre.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=F:/SPO/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/testfilesystem_pre.dir/testfilesystem_pre.c.obj"
	C:/MinGW/bin/gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/testfilesystem_pre.dir/testfilesystem_pre.c.obj -MF CMakeFiles/testfilesystem_pre.dir/testfilesystem_pre.c.obj.d -o CMakeFiles/testfilesystem_pre.dir/testfilesystem_pre.c.obj -c F:/SPO/SDL2/test/testfilesystem_pre.c

CMakeFiles/testfilesystem_pre.dir/testfilesystem_pre.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/testfilesystem_pre.dir/testfilesystem_pre.c.i"
	C:/MinGW/bin/gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E F:/SPO/SDL2/test/testfilesystem_pre.c > CMakeFiles/testfilesystem_pre.dir/testfilesystem_pre.c.i

CMakeFiles/testfilesystem_pre.dir/testfilesystem_pre.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/testfilesystem_pre.dir/testfilesystem_pre.c.s"
	C:/MinGW/bin/gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S F:/SPO/SDL2/test/testfilesystem_pre.c -o CMakeFiles/testfilesystem_pre.dir/testfilesystem_pre.c.s

# Object files for target testfilesystem_pre
testfilesystem_pre_OBJECTS = \
"CMakeFiles/testfilesystem_pre.dir/testfilesystem_pre.c.obj"

# External object files for target testfilesystem_pre
testfilesystem_pre_EXTERNAL_OBJECTS =

testfilesystem_pre.exe: CMakeFiles/testfilesystem_pre.dir/testfilesystem_pre.c.obj
testfilesystem_pre.exe: CMakeFiles/testfilesystem_pre.dir/build.make
testfilesystem_pre.exe: CMakeFiles/testfilesystem_pre.dir/linkLibs.rsp
testfilesystem_pre.exe: CMakeFiles/testfilesystem_pre.dir/objects1.rsp
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=F:/SPO/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable testfilesystem_pre.exe"
	"C:/Program Files/CMake/bin/cmake.exe" -E rm -f CMakeFiles/testfilesystem_pre.dir/objects.a
	C:/MinGW/bin/ar.exe qc CMakeFiles/testfilesystem_pre.dir/objects.a @CMakeFiles/testfilesystem_pre.dir/objects1.rsp
	C:/MinGW/bin/gcc.exe -g -Wl,--whole-archive CMakeFiles/testfilesystem_pre.dir/objects.a -Wl,--no-whole-archive -o testfilesystem_pre.exe -Wl,--out-implib,libtestfilesystem_pre.dll.a -Wl,--major-image-version,0,--minor-image-version,0 @CMakeFiles/testfilesystem_pre.dir/linkLibs.rsp

# Rule to build all files generated by this target.
CMakeFiles/testfilesystem_pre.dir/build: testfilesystem_pre.exe
.PHONY : CMakeFiles/testfilesystem_pre.dir/build

CMakeFiles/testfilesystem_pre.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/testfilesystem_pre.dir/cmake_clean.cmake
.PHONY : CMakeFiles/testfilesystem_pre.dir/clean

CMakeFiles/testfilesystem_pre.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" F:/SPO/SDL2/test F:/SPO/SDL2/test F:/SPO/build F:/SPO/build F:/SPO/build/CMakeFiles/testfilesystem_pre.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/testfilesystem_pre.dir/depend
