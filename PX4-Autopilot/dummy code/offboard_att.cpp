#include <ros/ros.h>
#include <std_msgs/String.h> 
#include <stdio.h>
#include <math.h>
#include "geometry_msgs/PoseStamped.h"
#include "geometry_msgs/TwistStamped.h"
#include "geometry_msgs/Vector3Stamped.h"
#include "std_msgs/Float64.h"
#include <mavros_msgs/CommandBool.h>
#include <mavros_msgs/SetMode.h>
#include <mavros_msgs/State.h>
#include <mavros_msgs/AttitudeTarget.h>
#include <mavros_msgs/Thrust.h>


//#include </home/mahesh/catkin_ws/src/beginner_tutorials/src/Qualisys.h>

static bool armed = false;
mavros_msgs::State current_state;
void state_cb(const mavros_msgs::State::ConstPtr& msg){
    current_state = *msg;
}
 
int main(int argc, char **argv)
{
  ros::init(argc, argv, "pub_setpoints");
  ros::NodeHandle n;
  double max_thrust_, time_gap_, max_body_rate_;

  ros::Subscriber state_sub = n.subscribe<mavros_msgs::State>
          ("mavros/state", 10, state_cb);
  ros::ServiceClient arming_client = n.serviceClient<mavros_msgs::CommandBool>
          ("mavros/cmd/arming");
  ros::ServiceClient set_mode_client = n.serviceClient<mavros_msgs::SetMode>
          ("mavros/set_mode");
  ros::Publisher pub_att = n.advertise<geometry_msgs::TwistStamped>("/mavros/setpoint_attitude/cmd_vel",100);
  ros::Publisher pub_thr = n.advertise<mavros_msgs::Thrust>("/mavros/setpoint_attitude/thrust", 100);
  ros::Publisher angularVelPub_ = n.advertise<mavros_msgs::AttitudeTarget>("/mavros/setpoint_raw/attitude", 1);

  n.param<double>("max_thrust", max_thrust_, 0.5);
  n.param<double>("max_body_rate", max_body_rate_, 2);
  ROS_INFO("Body rate max: %f", max_body_rate_);
  n.param<double>("time_gap", time_gap_, 0.2);



  ros::Rate loop_rate(100); 
  geometry_msgs::TwistStamped cmd_att;
  mavros_msgs::Thrust cmd_thr;
  int count = 1;
  double v[3]={1.0, 0.0, 0.0};
  double lambda = 1.0;


  double v_norm=sqrt(v[0]*v[0]+v[1]*v[1]+v[2]*v[2]);
  double theta=0.0;

  //the setpoint publishing rate MUST be faster than 2Hz
  ros::Rate rate(20.0);



  mavros_msgs::SetMode offb_set_mode;
  offb_set_mode.request.custom_mode = "OFFBOARD";

  mavros_msgs::CommandBool arm_cmd;
  arm_cmd.request.value = true;

  ros::Time last_request = ros::Time::now();

  // wait for FCU connection
  while(ros::ok() && !current_state.connected){
      ros::spinOnce();
      rate.sleep();
  }
  mavros_msgs::AttitudeTarget raw_cmd;
  double thrust_array_[6] = {0, 0.33, 0.67, 1.0, 0.67, 0.33};
  double thrust_ = 0;

  while(ros::ok()){
    if(current_state.mode == "OFFBOARD"){
      if( !current_state.armed &&
        (ros::Time::now() - last_request > ros::Duration(5.0))){
        if( arming_client.call(arm_cmd) &&
            arm_cmd.response.success){
            ROS_INFO("Vehicle armed");
        }
        last_request = ros::Time::now();                
      }
    }
    // thrust_ = max_thrust_*thrust_array_[int((count%24)/4)];
    thrust_ = 0.3;

    raw_cmd.thrust = thrust_;
    raw_cmd.body_rate.x = max_body_rate_*(((2.0*float((count%10)/5))-1.0)/10.0);
    // raw_cmd.body_rate.x = 0;
    raw_cmd.body_rate.y = 0;
    raw_cmd.body_rate.z = 0;
    angularVelPub_.publish(raw_cmd);

    ros::spinOnce();
    count++;
    loop_rate.sleep();
    ros::Duration(time_gap_).sleep();
  }


     
  return 0;
}