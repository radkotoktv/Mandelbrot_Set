# CMake generated Testfile for 
# Source directory: F:/SPO/SDL2/test
# Build directory: F:/SPO/build
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(testautomation "F:/SPO/build/testautomation.exe")
set_tests_properties(testautomation PROPERTIES  ENVIRONMENT "SDL_AUDIODRIVER=dummy;SDL_VIDEODRIVER=dummy" TIMEOUT "120" WORKING_DIRECTORY "F:/SPO/build" _BACKTRACE_TRIPLES "F:/SPO/SDL2/test/CMakeLists.txt;469;add_test;F:/SPO/SDL2/test/CMakeLists.txt;0;")
add_test(testatomic "F:/SPO/build/testatomic.exe")
set_tests_properties(testatomic PROPERTIES  ENVIRONMENT "SDL_AUDIODRIVER=dummy;SDL_VIDEODRIVER=dummy" TIMEOUT "10" WORKING_DIRECTORY "F:/SPO/build" _BACKTRACE_TRIPLES "F:/SPO/SDL2/test/CMakeLists.txt;469;add_test;F:/SPO/SDL2/test/CMakeLists.txt;0;")
add_test(testerror "F:/SPO/build/testerror.exe")
set_tests_properties(testerror PROPERTIES  ENVIRONMENT "SDL_AUDIODRIVER=dummy;SDL_VIDEODRIVER=dummy" TIMEOUT "10" WORKING_DIRECTORY "F:/SPO/build" _BACKTRACE_TRIPLES "F:/SPO/SDL2/test/CMakeLists.txt;469;add_test;F:/SPO/SDL2/test/CMakeLists.txt;0;")
add_test(testthread "F:/SPO/build/testthread.exe")
set_tests_properties(testthread PROPERTIES  ENVIRONMENT "SDL_AUDIODRIVER=dummy;SDL_VIDEODRIVER=dummy" TIMEOUT "40" WORKING_DIRECTORY "F:/SPO/build" _BACKTRACE_TRIPLES "F:/SPO/SDL2/test/CMakeLists.txt;469;add_test;F:/SPO/SDL2/test/CMakeLists.txt;0;")
add_test(testlocale "F:/SPO/build/testlocale.exe")
set_tests_properties(testlocale PROPERTIES  ENVIRONMENT "SDL_AUDIODRIVER=dummy;SDL_VIDEODRIVER=dummy" TIMEOUT "10" WORKING_DIRECTORY "F:/SPO/build" _BACKTRACE_TRIPLES "F:/SPO/SDL2/test/CMakeLists.txt;469;add_test;F:/SPO/SDL2/test/CMakeLists.txt;0;")
add_test(testplatform "F:/SPO/build/testplatform.exe")
set_tests_properties(testplatform PROPERTIES  ENVIRONMENT "SDL_AUDIODRIVER=dummy;SDL_VIDEODRIVER=dummy" TIMEOUT "10" WORKING_DIRECTORY "F:/SPO/build" _BACKTRACE_TRIPLES "F:/SPO/SDL2/test/CMakeLists.txt;469;add_test;F:/SPO/SDL2/test/CMakeLists.txt;0;")
add_test(testpower "F:/SPO/build/testpower.exe")
set_tests_properties(testpower PROPERTIES  ENVIRONMENT "SDL_AUDIODRIVER=dummy;SDL_VIDEODRIVER=dummy" TIMEOUT "10" WORKING_DIRECTORY "F:/SPO/build" _BACKTRACE_TRIPLES "F:/SPO/SDL2/test/CMakeLists.txt;469;add_test;F:/SPO/SDL2/test/CMakeLists.txt;0;")
add_test(testfilesystem "F:/SPO/build/testfilesystem.exe")
set_tests_properties(testfilesystem PROPERTIES  DEPENDS "testfilesystem_pre" ENVIRONMENT "SDL_AUDIODRIVER=dummy;SDL_VIDEODRIVER=dummy" TIMEOUT "10" WORKING_DIRECTORY "F:/SPO/build" _BACKTRACE_TRIPLES "F:/SPO/SDL2/test/CMakeLists.txt;469;add_test;F:/SPO/SDL2/test/CMakeLists.txt;0;")
add_test(testfilesystem_pre "F:/SPO/build/testfilesystem_pre.exe")
set_tests_properties(testfilesystem_pre PROPERTIES  ENVIRONMENT "SDL_AUDIODRIVER=dummy;SDL_VIDEODRIVER=dummy" TIMEOUT "60" WORKING_DIRECTORY "F:/SPO/build" _BACKTRACE_TRIPLES "F:/SPO/SDL2/test/CMakeLists.txt;469;add_test;F:/SPO/SDL2/test/CMakeLists.txt;0;")
add_test(testtimer "F:/SPO/build/testtimer.exe")
set_tests_properties(testtimer PROPERTIES  ENVIRONMENT "SDL_AUDIODRIVER=dummy;SDL_VIDEODRIVER=dummy" TIMEOUT "60" WORKING_DIRECTORY "F:/SPO/build" _BACKTRACE_TRIPLES "F:/SPO/SDL2/test/CMakeLists.txt;469;add_test;F:/SPO/SDL2/test/CMakeLists.txt;0;")
add_test(testver "F:/SPO/build/testver.exe")
set_tests_properties(testver PROPERTIES  ENVIRONMENT "SDL_AUDIODRIVER=dummy;SDL_VIDEODRIVER=dummy" TIMEOUT "10" WORKING_DIRECTORY "F:/SPO/build" _BACKTRACE_TRIPLES "F:/SPO/SDL2/test/CMakeLists.txt;469;add_test;F:/SPO/SDL2/test/CMakeLists.txt;0;")
add_test(testqsort "F:/SPO/build/testqsort.exe")
set_tests_properties(testqsort PROPERTIES  ENVIRONMENT "SDL_AUDIODRIVER=dummy;SDL_VIDEODRIVER=dummy" TIMEOUT "10" WORKING_DIRECTORY "F:/SPO/build" _BACKTRACE_TRIPLES "F:/SPO/SDL2/test/CMakeLists.txt;469;add_test;F:/SPO/SDL2/test/CMakeLists.txt;0;")
