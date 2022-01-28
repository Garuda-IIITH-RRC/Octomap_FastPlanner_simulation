#ifndef MSG_CHECK_MSG_CHECK_H
#define MSG_CHECK_MSG_CHECK_H

#include <mav_msgs/conversions.h>
#include <mav_msgs/eigen_mav_msgs.h>


#include "msg_check/PlotDataMsg.h"

namespace msg_check{
	class MsgCheck {
	public:
		MsgCheck();
		void writeMsg(msg_check::PlotDataMsg* data);

	private:

	};

}

#endif