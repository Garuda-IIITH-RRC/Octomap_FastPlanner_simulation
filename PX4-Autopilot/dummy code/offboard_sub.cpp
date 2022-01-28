/**
 * @file offb_node.cpp
 * @brief Offboard control example node, written with MAVROS version 0.19.x, PX4 Pro Flight
 * Stack and tested in Gazebo SITL
 */

#include <ros/ros.h>
#include <geometry_msgs/PoseStamped.h>
#include <mavros_msgs/CommandBool.h>
#include <mavros_msgs/SetMode.h>
#include <mavros_msgs/State.h>
/*
class Offboard{
private:
    geometry_msgs::PoseStamped pose;
    ros::Subscriber pose_sub;
    ros::Publisher pose_pub;
    ros::Rate sleep_rate;

    //void poseCallback(const geometry_msgs::PointStampedConstPtr&);
    void posePublish(const geometry_msgs::PointStampedConstPtr&);

public:
    void Offboard(const ros::NodeHandle& nh){
        pose.pose.position.x = 0;
        pose.pose.position.y = 0;
        pose.pose.position.z = 1;
	pose.pose.orientation.x = 0;
	pose.pose.orientation.y = 0;
	pose.pose.orientation.z = 0;
	pose.pose.orientation.w = -1;
	
	pose_sub = nh.subscribe<geometry_msgs::PoseStamped> ("new_pose", 10, poseCallback);
	pose_pub = nh.advertise<geometry_msgs::PoseStamped> ("mavros/setpoint_position/local", 10);
    }

};
*/
geometry_msgs::PoseStamped pose;
static bool pre_arm_ = true;

mavros_msgs::State current_state;
void state_cb(const mavros_msgs::State::ConstPtr& msg){
    current_state = *msg;
}

void poseCallback(const geometry_msgs::PoseStampedConstPtr& pose_msg){
    ROS_INFO_ONCE("New pose received");
    pose = *pose_msg;
}

void arm_drone(){

}

int main(int argc, char **argv)
{
    ros::init(argc, argv, "offb_node");
    ros::NodeHandle nh;

    ros::Subscriber state_sub = nh.subscribe<mavros_msgs::State>
            ("mavros/state", 10, state_cb);
    ros::Publisher local_pos_pub = nh.advertise<geometry_msgs::PoseStamped>
            ("mavros/setpoint_position/local", 10);
    ros::Subscriber pose_sub = nh.subscribe<geometry_msgs::PoseStamped>
	    ("new_pose", 10, poseCallback);
    ros::ServiceClient arming_client = nh.serviceClient<mavros_msgs::CommandBool>
            ("mavros/cmd/arming");
    ros::ServiceClient set_mode_client = nh.serviceClient<mavros_msgs::SetMode>
            ("mavros/set_mode");

    //the setpoint publishing rate MUST be faster than 2Hz
    ros::Rate rate(20.0);

    // wait for FCU connection
    while(ros::ok() && !current_state.connected){
        ros::spinOnce();
        rate.sleep();
    }

    pose.pose.position.x = 0.031;
    pose.pose.position.y = -0.026;
    pose.pose.position.z = 1.86;

    pose.pose.orientation.x = 0.0;
    pose.pose.orientation.y = 0.0;
    pose.pose.orientation.z = 0.0;
    pose.pose.orientation.w = -1.0;

    //send a few setpoints before starting
    for(int i = 100; ros::ok() && i > 0; --i){
        local_pos_pub.publish(pose);
        ros::spinOnce();
        rate.sleep();
    }

    mavros_msgs::SetMode offb_set_mode;
    offb_set_mode.request.custom_mode = "OFFBOARD";

    mavros_msgs::CommandBool arm_cmd;
    arm_cmd.request.value = true;

    ros::Time last_request = ros::Time::now();

    while(ros::ok()){
        if(pre_arm_){
//            ROS_INFO("pre_arm: %d",pre_arm_);
            if( current_state.mode != "OFFBOARD" &&
                (ros::Time::now() - last_request > ros::Duration(5.0))){
                if( set_mode_client.call(offb_set_mode) &&
                    offb_set_mode.response.mode_sent){
                    ROS_INFO("Offboard enabled");
                }
                last_request = ros::Time::now();
            } else {
                if( !current_state.armed &&
                    (ros::Time::now() - last_request > ros::Duration(5.0))){
                    if( arming_client.call(arm_cmd) &&
                        arm_cmd.response.success){
                        ROS_INFO("Vehicle armed");
                        pre_arm_ = false;
                    	break;
                    }
                    last_request = ros::Time::now();
                }
            }
        }
    }
    ROS_INFO("Publishing waypoint");
    while(ros::ok()){

        local_pos_pub.publish(pose);
	   ROS_INFO("Publish");
        ros::spinOnce();
        rate.sleep();
    }

    return 0;
}

