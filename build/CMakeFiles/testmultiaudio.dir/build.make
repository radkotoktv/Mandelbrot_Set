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
include CMakeFiles/testmultiaudio.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/testmultiaudio.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/testmultiaudio.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/testmultiaudio.dir/flags.make

CMakeFiles/testmultiaudio.dir/testmultiaudio.c.obj: CMakeFiles/testmultiaudio.dir/flags.make
CMakeFiles/testmultiaudio.dir/testmultiaudio.c.obj: F:/SPO/SDL2/test/testmultiaudio.c
CMakeFiles/testmultiaudio.dir/testmultiaudio.c.obj: CMakeFiles/testmultiaudio.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=F:/SPO/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/testmultiaudio.dir/testmultiaudio.c.obj"
	C:/MinGW/bin/gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/testmultiaudio.dir/testmultiaudio.c.obj -MF CMakeFiles/testmultiaudio.dir/testmultiaudio.c.obj.d -o CMakeFiles/testmultiaudio.dir/testmultiaudio.c.obj -c F:/SPO/SDL2/test/testmultiaudio.c

CMakeFiles/testmultiaudio.dir/testmultiaudio.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/testmultiaudio.dir/testmultiaudio.c.i"
	C:/MinGW/bin/gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E F:/SPO/SDL2/test/testmultiaudio.c > CMakeFiles/testmultiaudio.dir/testmultiaudio.c.i

CMakeFiles/testmultiaudio.dir/testmultiaudio.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/testmultiaudio.dir/testmultiaudio.c.s"
	C:/MinGW/bin/gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S F:/SPO/SDL2/test/testmultiaudio.c -o CMakeFiles/testmultiaudio.dir/testmultiaudio.c.s

CMakeFiles/testmultiaudio.dir/testutils.c.obj: CMakeFiles/testmultiaudio.dir/flags.make
CMakeFiles/testmultiaudio.dir/testutils.c.obj: F:/SPO/SDL2/test/testutils.c
CMakeFiles/testmultiaudio.dir/testutils.c.obj: CMakeFiles/testmultiaudio.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=F:/SPO/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMakeFiles/testmultiaudio.dir/testutils.c.obj"
	C:/MinGW/bin/gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/testmultiaudio.dir/testutils.c.obj -MF CMakeFiles/testmultiaudio.dir/testutils.c.obj.d -o CMakeFiles/testmultiaudio.dir/testutils.c.obj -c F:/SPO/SDL2/test/testutils.c

CMakeFiles/testmultiaudio.dir/testutils.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/testmultiaudio.dir/testutils.c.i"
	C:/MinGW/bin/gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E F:/SPO/SDL2/test/testutils.c > CMakeFiles/testmultiaudio.dir/testutils.c.i

CMakeFiles/testmultiaudio.dir/testutils.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/testmultiaudio.dir/testutils.c.s"
	C:/MinGW/bin/gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S F:/SPO/SDL2/test/testutils.c -o CMakeFiles/testmultiaudio.dir/testutils.c.s

# Object files for target testmultiaudio
testmultiaudio_OBJECTS = \
"CMakeFiles/testmultiaudio.dir/testmultiaudio.c.obj" \
"CMakeFiles/testmultiaudio.dir/testutils.c.obj"

# External object files for target testmultiaudio
testmultiaudio_EXTERNAL_OBJECTS =

testmultiaudio.exe: CMakeFiles/testmultiaudio.dir/testmultiaudio.c.obj
testmultiaudio.exe: CMakeFiles/testmultiaudio.dir/testutils.c.obj
testmultiaudio.exe: CMakeFiles/testmultiaudio.dir/build.make
testmultiaudio.exe: CMakeFiles/testmultiaudio.dir/linkLibs.rsp
testmultiaudio.exe: CMakeFiles/testmultiaudio.dir/objects1.rsp
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=F:/SPO/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking C executable testmultiaudio.exe"
	"C:/Program Files/CMake/bin/cmake.exe" -E rm -f CMakeFiles/testmultiaudio.dir/objects.a
	C:/MinGW/bin/ar.exe qc CMakeFiles/testmultiaudio.dir/objects.a @CMakeFiles/testmultiaudio.dir/objects1.rsp
	C:/MinGW/bin/gcc.exe -g -Wl,--whole-archive CMakeFiles/testmultiaudio.dir/objects.a -Wl,--no-whole-archive -o testmultiaudio.exe -Wl,--out-implib,libtestmultiaudio.dll.a -Wl,--major-image-version,0,--minor-image-version,0 @CMakeFiles/testmultiaudio.dir/linkLibs.rsp

# Rule to build all files generated by this target.
CMakeFiles/testmultiaudio.dir/build: testmultiaudio.exe
.PHONY : CMakeFiles/testmultiaudio.dir/build

CMakeFiles/testmultiaudio.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/testmultiaudio.dir/cmake_clean.cmake
.PHONY : CMakeFiles/testmultiaudio.dir/clean

CMakeFiles/testmultiaudio.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" F:/SPO/SDL2/test F:/SPO/SDL2/test F:/SPO/build F:/SPO/build F:/SPO/build/CMakeFiles/testmultiaudio.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/testmultiaudio.dir/depend
