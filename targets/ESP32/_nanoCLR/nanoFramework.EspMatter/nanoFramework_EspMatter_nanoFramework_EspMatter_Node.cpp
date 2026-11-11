#include <data_model/generated/esp_matter_data_model_utils.h>

#include "nanoFramework_EspMatter.h"
#include "nanoFramework_EspMatter_nanoFramework_EspMatter_Node.h"

using namespace nanoFramework_EspMatter::nanoFramework_EspMatter;

unsigned int Node::EspMatter_Node_Create(HRESULT &hr)
{
    static auto attributeCallback = [](esp_matter::attribute::callback_type_t type, uint16_t endpoint_id, uint32_t cluster_id, uint32_t attribute_id, esp_matter_attr_val_t *val, void *priv_data) -> esp_err_t {
        const uint8_t attributeCallbackSubcategory = 2;

        // // Define a structure to hold all arguments together
        // struct callback_data_t {
        //     esp_matter::attribute::callback_type_t type;
        //     uint16_t endpoint_id;
        //     uint32_t cluster_id;
        //     uint32_t attribute_id;
        //     esp_matter_attr_val_t* val;
        //     void *priv_data;
        // };

        // // Allocate array/buffer if not allocated yet (using static storage)
        // static callback_data_t buffer;

        // // Clean all old data
        // memset(&buffer, 0, sizeof(callback_data_t));

        // buffer.type = type;
        // buffer.endpoint_id = endpoint_id;
        // buffer.cluster_id = cluster_id;
        // buffer.attribute_id = attribute_id;
        // buffer.val = val;
        // buffer.priv_data = priv_data;

        // unsigned int pointerToBuffer = reinterpret_cast<unsigned int>(&buffer);

        PostManagedEvent(EVENT_CUSTOM, attributeCallbackSubcategory, 0, 0);

        return ESP_OK;
    };

    static auto identifyCallback = [](esp_matter::identification::callback_type_t type, uint16_t endpoint_id, uint8_t effect_id, uint8_t effect_variant, void *priv_data) -> esp_err_t {
        const uint8_t identifyCallbackSubcategory = 3;

        PostManagedEvent(EVENT_CUSTOM, identifyCallbackSubcategory, 0, 0);

        // stop execution here until processed

        return ESP_OK;
    };

    esp_matter::node::config_t node_config;
    auto node = esp_matter::node::create(&node_config, attributeCallback, identifyCallback);

    unsigned int retValue = reinterpret_cast<unsigned int>(node);

    return retValue;
}
