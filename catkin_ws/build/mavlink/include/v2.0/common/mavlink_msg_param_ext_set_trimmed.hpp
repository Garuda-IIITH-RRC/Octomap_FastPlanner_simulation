// MESSAGE PARAM_EXT_SET_TRIMMED support class

#pragma once

namespace mavlink {
namespace common {
namespace msg {

/**
 * @brief PARAM_EXT_SET_TRIMMED message
 *
 * Set a parameter value. In order to deal with message loss (and retransmission of PARAM_EXT_SET_TRIMMED), when setting a parameter value and the new value is the same as the current value, you will immediately get a PARAM_ACK_ACCEPTED response. If the current state is PARAM_ACK_IN_PROGRESS, you will accordingly receive a PARAM_ACK_IN_PROGRESS in response. If there is no response to this message, and it is unknown whether the _TRIMMED messages are supported (because no PARAM_EXT_REQUEST_READ or PARAM_EXT_REQUEST_LIST has been performed yet), then fall back to PARAM_EXT_SET.
 */
struct PARAM_EXT_SET_TRIMMED : mavlink::Message {
    static constexpr msgid_t MSG_ID = 326;
    static constexpr size_t LENGTH = 147;
    static constexpr size_t MIN_LENGTH = 147;
    static constexpr uint8_t CRC_EXTRA = 120;
    static constexpr auto NAME = "PARAM_EXT_SET_TRIMMED";


    uint8_t target_system; /*<  System ID */
    uint8_t target_component; /*<  Component ID */
    uint8_t param_type; /*<  Parameter type. */
    std::array<char, 16> param_id; /*<  Parameter id, terminated by NULL if the length is less than 16 human-readable chars and WITHOUT null termination (NULL) byte if the length is exactly 16 chars - applications have to provide 16+1 bytes storage if the ID is stored as string */
    std::array<char, 128> param_value; /*<  Parameter value (zeros get trimmed) */


    inline std::string get_name(void) const override
    {
            return NAME;
    }

    inline Info get_message_info(void) const override
    {
            return { MSG_ID, LENGTH, MIN_LENGTH, CRC_EXTRA };
    }

    inline std::string to_yaml(void) const override
    {
        std::stringstream ss;

        ss << NAME << ":" << std::endl;
        ss << "  target_system: " << +target_system << std::endl;
        ss << "  target_component: " << +target_component << std::endl;
        ss << "  param_type: " << +param_type << std::endl;
        ss << "  param_id: \"" << to_string(param_id) << "\"" << std::endl;
        ss << "  param_value: \"" << to_string(param_value) << "\"" << std::endl;

        return ss.str();
    }

    inline void serialize(mavlink::MsgMap &map) const override
    {
        map.reset(MSG_ID, LENGTH);

        map << target_system;                 // offset: 0
        map << target_component;              // offset: 1
        map << param_type;                    // offset: 2
        map << param_id;                      // offset: 3
        map << param_value;                   // offset: 19
    }

    inline void deserialize(mavlink::MsgMap &map) override
    {
        map >> target_system;                 // offset: 0
        map >> target_component;              // offset: 1
        map >> param_type;                    // offset: 2
        map >> param_id;                      // offset: 3
        map >> param_value;                   // offset: 19
    }
};

} // namespace msg
} // namespace common
} // namespace mavlink
