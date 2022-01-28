# generated from catkin/cmake/template/pkg.context.pc.in
CATKIN_PACKAGE_PREFIX = ""
PROJECT_PKG_CONFIG_INCLUDE_DIRS = "${prefix}/include".split(';') if "${prefix}/include" != "" else []
PROJECT_CATKIN_DEPENDS = "roscpp;rospy;std_msgs;mavros_msgs;geometry_msgs;sensor_msgs;message_runtime;tf;avoidance".replace(';', ' ')
PKG_CONFIG_LIBRARIES_WITH_PREFIX = "-llocal_planner".split(';') if "-llocal_planner" != "" else []
PROJECT_NAME = "local_planner"
PROJECT_SPACE_DIR = "/home/rishabh/catkin_ws/install"
PROJECT_VERSION = "0.0.0"
