#!/bin/sh

DESTDIR=/home/rishabh/catkin_ws/build/nlopt/nlopt_install make install

cp -r /home/rishabh/catkin_ws/build/nlopt/nlopt_install//home/rishabh/catkin_ws/install/* /home/rishabh/catkin_ws/devel/.private/nlopt/
