

#ifndef MSG_CHECK_MSG_CHECK_NODE_H
#define MSG_CHECK_MSG_CHECK_NODE_H


#include <boost/bind.hpp>
#include <Eigen/Eigen>
#include <stdio.h>

#include <ros/callback_queue.h>
#include <ros/ros.h>

#include "msg_check/msg_check.h"
#include "msg_check/PlotDataMsg.h"


namespace msg_check {
	class MsgCheckNode{
	public:
		MsgCheckNode(const ros::NodeHandle& nh, const ros::NodeHandle& private_nh);
		~MsgCheckNode();

	private:
		ros::NodeHandle nh_;
		ros::NodeHandle private_nh_;

		MsgCheck checker_;
		msg_check::PlotDataMsg data_out_;

  		ros::Publisher plot_data_pub_;

  		void sendMsg();
	};

}

#endif