# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 2.8

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/aramus/fuerte_workspace/sandbox/rock_publisher

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/aramus/fuerte_workspace/sandbox/rock_publisher/build

# Include any dependencies generated for this target.
include CMakeFiles/rock_subscriber.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/rock_subscriber.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/rock_subscriber.dir/flags.make

CMakeFiles/rock_subscriber.dir/src/rock_subscriber.o: CMakeFiles/rock_subscriber.dir/flags.make
CMakeFiles/rock_subscriber.dir/src/rock_subscriber.o: ../src/rock_subscriber.cpp
CMakeFiles/rock_subscriber.dir/src/rock_subscriber.o: ../manifest.xml
CMakeFiles/rock_subscriber.dir/src/rock_subscriber.o: /opt/ros/fuerte/share/roslang/manifest.xml
CMakeFiles/rock_subscriber.dir/src/rock_subscriber.o: /opt/ros/fuerte/share/roscpp/manifest.xml
CMakeFiles/rock_subscriber.dir/src/rock_subscriber.o: /opt/ros/fuerte/share/std_msgs/manifest.xml
	$(CMAKE_COMMAND) -E cmake_progress_report /home/aramus/fuerte_workspace/sandbox/rock_publisher/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/rock_subscriber.dir/src/rock_subscriber.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -W -Wall -Wno-unused-parameter -fno-strict-aliasing -pthread -o CMakeFiles/rock_subscriber.dir/src/rock_subscriber.o -c /home/aramus/fuerte_workspace/sandbox/rock_publisher/src/rock_subscriber.cpp

CMakeFiles/rock_subscriber.dir/src/rock_subscriber.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/rock_subscriber.dir/src/rock_subscriber.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -W -Wall -Wno-unused-parameter -fno-strict-aliasing -pthread -E /home/aramus/fuerte_workspace/sandbox/rock_publisher/src/rock_subscriber.cpp > CMakeFiles/rock_subscriber.dir/src/rock_subscriber.i

CMakeFiles/rock_subscriber.dir/src/rock_subscriber.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/rock_subscriber.dir/src/rock_subscriber.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -W -Wall -Wno-unused-parameter -fno-strict-aliasing -pthread -S /home/aramus/fuerte_workspace/sandbox/rock_publisher/src/rock_subscriber.cpp -o CMakeFiles/rock_subscriber.dir/src/rock_subscriber.s

CMakeFiles/rock_subscriber.dir/src/rock_subscriber.o.requires:
.PHONY : CMakeFiles/rock_subscriber.dir/src/rock_subscriber.o.requires

CMakeFiles/rock_subscriber.dir/src/rock_subscriber.o.provides: CMakeFiles/rock_subscriber.dir/src/rock_subscriber.o.requires
	$(MAKE) -f CMakeFiles/rock_subscriber.dir/build.make CMakeFiles/rock_subscriber.dir/src/rock_subscriber.o.provides.build
.PHONY : CMakeFiles/rock_subscriber.dir/src/rock_subscriber.o.provides

CMakeFiles/rock_subscriber.dir/src/rock_subscriber.o.provides.build: CMakeFiles/rock_subscriber.dir/src/rock_subscriber.o

# Object files for target rock_subscriber
rock_subscriber_OBJECTS = \
"CMakeFiles/rock_subscriber.dir/src/rock_subscriber.o"

# External object files for target rock_subscriber
rock_subscriber_EXTERNAL_OBJECTS =

../bin/rock_subscriber: CMakeFiles/rock_subscriber.dir/src/rock_subscriber.o
../bin/rock_subscriber: CMakeFiles/rock_subscriber.dir/build.make
../bin/rock_subscriber: CMakeFiles/rock_subscriber.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable ../bin/rock_subscriber"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/rock_subscriber.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/rock_subscriber.dir/build: ../bin/rock_subscriber
.PHONY : CMakeFiles/rock_subscriber.dir/build

CMakeFiles/rock_subscriber.dir/requires: CMakeFiles/rock_subscriber.dir/src/rock_subscriber.o.requires
.PHONY : CMakeFiles/rock_subscriber.dir/requires

CMakeFiles/rock_subscriber.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/rock_subscriber.dir/cmake_clean.cmake
.PHONY : CMakeFiles/rock_subscriber.dir/clean

CMakeFiles/rock_subscriber.dir/depend:
	cd /home/aramus/fuerte_workspace/sandbox/rock_publisher/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/aramus/fuerte_workspace/sandbox/rock_publisher /home/aramus/fuerte_workspace/sandbox/rock_publisher /home/aramus/fuerte_workspace/sandbox/rock_publisher/build /home/aramus/fuerte_workspace/sandbox/rock_publisher/build /home/aramus/fuerte_workspace/sandbox/rock_publisher/build/CMakeFiles/rock_subscriber.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/rock_subscriber.dir/depend

