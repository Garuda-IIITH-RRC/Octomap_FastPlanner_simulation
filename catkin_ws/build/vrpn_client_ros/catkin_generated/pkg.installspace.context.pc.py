# generated from catkin/cmake/template/pkg.context.pc.in
CATKIN_PACKAGE_PREFIX = ""
PROJECT_PKG_CONFIG_INCLUDE_DIRS = "${prefix}/include;/opt/ros/melodic/include".split(';') if "${prefix}/include;/opt/ros/melodic/include" != "" else []
PROJECT_CATKIN_DEPENDS = "geometry_msgs;tf2_ros".replace(';', ' ')
PKG_CONFIG_LIBRARIES_WITH_PREFIX = "-lvrpn_client_ros;/opt/ros/melodic/lib/libvrpn.a;/opt/ros/melodic/lib/libquat.a;-lm;-lpthread".split(';') if "-lvrpn_client_ros;/opt/ros/melodic/lib/libvrpn.a;/opt/ros/melodic/lib/libquat.a;-lm;-lpthread" != "" else []
PROJECT_NAME = "vrpn_client_ros"
PROJECT_SPACE_DIR = "/home/rishabh/catkin_ws/install"
PROJECT_VERSION = "0.2.2"
