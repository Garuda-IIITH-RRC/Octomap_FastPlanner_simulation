// MESSAGE PARAM_EXT_ACK_TRIMMED support class

#pragma once

namespace mavlink {
namespace common {
namespace msg {

/**
 * @brief PARAM_EXT_ACK_TRIMMED message
 *
 * Response from a PARAM_EXT_SET_TRIMMED message.
 */
struct PARAM_EXT_ACK_TRIMMED : mavlink::Message {
    static constexpr msgid_t MSG_ID = 327;
    static constexpr size_t LENGTH = 146;
    static constexpr size_t MIN_LENGTH = 146;
    static constexpr uint8_t CRC_EXTRA = 129;
    static constexpr auto NAME = "PARAM_EXT_ACK_TRIMMED";


    uint8_t param_result; /*<  Result code. */
    uint8_t param_type; /*<  Parameter type. */
    std::array<char, 16> param_id; /*<  Parameter id, terminated by NULL if the length is less than 16 human-readable chars and WITHOUT null termination (NULL) byte if the length is exactly 16 chars - applications have to provide 16+1 bytes storage if the ID is stored as string */
    std::array<char, 128> param_value; /*<  Parameter value (new value if PARAM_ACK_ACCEPTED, current value otherwise, zeros get trimmed) */


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
        ss << "  param_result: " << +param_result << std::endl;
        ss << "  param_type: " << +param_type << std::endl;
        ss << "  param_id: \"" << to_string(param_id) << "\"" << std::endl;
        ss << "  param_value: \"" << to_string(param_value) << "\"" << std::endl;

        return ss.str();
    }

    inline void serialize(mavlink::MsgMap &map) const override
    {
        map.reset(MSG_ID, LENGTH);

        map << param_result;                  // offset: 0
        map << param_type;                    // offset: 1
        map << param_id;                      // offset: 2
        map << param_value;                   // offset: 18
    }

    inline void deserialize(mavlink::MsgMap &map) override
    {
        map >> param_result;                  // offset: 0
        map >> param_type;                    // offset: 1
        map >> param_id;                      // offset: 2
        map >> param_value;                   // offset: 18
    }
};

} // namespace msg
} // namespace common
} // namespace mavlink
