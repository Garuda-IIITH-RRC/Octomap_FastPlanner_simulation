cmake_minimum_required(VERSION 2.8.3)
project(msg_check)

add_definitions(-std=c++11)

find_package(catkin REQUIRED COMPONENTS
  geometry_msgs
  mav_msgs
  nav_msgs
  roscpp
  rospy
  sensor_msgs
  cmake_modules
  message_generation
  eigen_conversions

)

find_package(Eigen REQUIRED)

add_message_files(
  FILES
  PlotDataMsg.msg
)

generate_messages(
  DEPENDENCIES
  std_msgs
  geometry_msgs
)

catkin_package(
  INCLUDE_DIRS include ${Eigen_INCLUDE_DIRS}
  LIBRARIES  msg_check
  CATKIN_DEPENDS geometry_msgs mav_msgs nav_msgs roscpp rospy sensor_msgs message_runtime
  DEPENDS Eigen
)

include_directories(
  include
  ${catkin_INCLUDE_DIRS}
  ${Eigen_INCLUDE_DIRS}
)

add_library(msg_check
  src/library/msg_check.cpp
)

target_link_libraries(msg_check ${catkin_LIBRARIES})
add_dependencies(msg_check ${catkin_EXPORTED_TARGETS})

add_executable(msg_check_node src/nodes/msg_check_node.cpp)
add_dependencies(msg_check_node ${catkin_EXPORTED_TARGETS})
target_link_libraries(msg_check_node
  msg_check ${catkin_LIBRARIES})


install(TARGETS msg_check
  LIBRARY DESTINATION ${CATKIN_PACKAGE_LIB_DESTINATION}
)

install(TARGETS msg_check_node
  ARCHIVE DESTINATION ${CATKIN_PACKAGE_LIB_DESTINATION}
  LIBRARY DESTINATION ${CATKIN_PACKAGE_LIB_DESTINATION}
  RUNTIME DESTINATION ${CATKIN_PACKAGE_BIN_DESTINATION}
)

install(
  DIRECTORY include/${PROJECT_NAME}/
  DESTINATION ${CATKIN_PACKAGE_INCLUDE_DESTINATION}
  FILES_MATCHING PATTERN "*.h"
)


