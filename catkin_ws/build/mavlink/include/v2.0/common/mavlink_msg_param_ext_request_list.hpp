// MESSAGE PARAM_EXT_REQUEST_LIST support class

#pragma once

namespace mavlink {
namespace common {
namespace msg {

/**
 * @brief PARAM_EXT_REQUEST_LIST message
 *
 * Request all parameters of this component. All parameters should be emitted in response (as PARAM_EXT_VALUE or PARAM_EXT_VALUE_TRIMMED messages - see field: trimmed).
 */
struct PARAM_EXT_REQUEST_LIST : mavlink::Message {
    static constexpr msgid_t MSG_ID = 321;
    static constexpr size_t LENGTH = 3;
    static constexpr size_t MIN_LENGTH = 2;
    static constexpr uint8_t CRC_EXTRA = 88;
    static constexpr auto NAME = "PARAM_EXT_REQUEST_LIST";


    uint8_t target_system; /*<  System ID */
    uint8_t target_component; /*<  Component ID */
    uint8_t trimmed; /*<  Request _TRIMMED variants of PARAM_EXT_ messages. Set to 1 if _TRIMMED message variants are supported, and 0 otherwise. This signals the recipient that _TRIMMED messages are supported by the sender (and should be used if supported by the recipient). */


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
        ss << "  trimmed: " << +trimmed << std::endl;

        return ss.str();
    }

    inline void serialize(mavlink::MsgMap &map) const override
    {
        map.reset(MSG_ID, LENGTH);

        map << target_system;                 // offset: 0
        map << target_component;              // offset: 1
        map << trimmed;                       // offset: 2
    }

    inline void deserialize(mavlink::MsgMap &map) override
    {
        map >> target_system;                 // offset: 0
        map >> target_component;              // offset: 1
        map >> trimmed;                       // offset: 2
    }
};

} // namespace msg
} // namespace common
} // namespace mavlink
