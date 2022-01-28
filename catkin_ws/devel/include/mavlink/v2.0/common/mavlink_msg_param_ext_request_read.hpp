// MESSAGE PARAM_EXT_REQUEST_READ support class

#pragma once

namespace mavlink {
namespace common {
namespace msg {

/**
 * @brief PARAM_EXT_REQUEST_READ message
 *
 * Request to read the value of a parameter with either the param_id string id or param_index. PARAM_EXT_VALUE or PARAM_EXT_VALUE_TRIMMED should be emitted in response (see field: trimmed).
 */
struct PARAM_EXT_REQUEST_READ : mavlink::Message {
    static constexpr msgid_t MSG_ID = 320;
    static constexpr size_t LENGTH = 21;
    static constexpr size_t MIN_LENGTH = 20;
    static constexpr uint8_t CRC_EXTRA = 243;
    static constexpr auto NAME = "PARAM_EXT_REQUEST_READ";


    uint8_t target_system; /*<  System ID */
    uint8_t target_component; /*<  Component ID */
    std::array<char, 16> param_id; /*<  Parameter id, terminated by NULL if the length is less than 16 human-readable chars and WITHOUT null termination (NULL) byte if the length is exactly 16 chars - applications have to provide 16+1 bytes storage if the ID is stored as string */
    int16_t param_index; /*<  Parameter index. Set to -1 to use the Parameter ID field as identifier (else param_id will be ignored) */
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
        ss << "  param_id: \"" << to_string(param_id) << "\"" << std::endl;
        ss << "  param_index: " << param_index << std::endl;
        ss << "  trimmed: " << +trimmed << std::endl;

        return ss.str();
    }

    inline void serialize(mavlink::MsgMap &map) const override
    {
        map.reset(MSG_ID, LENGTH);

        map << param_index;                   // offset: 0
        map << target_system;                 // offset: 2
        map << target_component;              // offset: 3
        map << param_id;                      // offset: 4
        map << trimmed;                       // offset: 20
    }

    inline void deserialize(mavlink::MsgMap &map) override
    {
        map >> param_index;                   // offset: 0
        map >> target_system;                 // offset: 2
        map >> target_component;              // offset: 3
        map >> param_id;                      // offset: 4
        map >> trimmed;                       // offset: 20
    }
};

} // namespace msg
} // namespace common
} // namespace mavlink
