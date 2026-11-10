#include <data_model/generated/esp_matter_data_model_utils.h>
#include <data_model/generated/device_types/on_off_light_switch_device/on_off_light_switch_device.h>

#include "nanoFramework_EspMatter.h"
#include "nanoFramework_EspMatter_nanoFramework_EspMatter_Endpoints_OnOffLightSwitch.h"

using namespace nanoFramework_EspMatter::nanoFramework_EspMatter;

unsigned int OnOffLightSwitch::EspMatter_Endpoint_OnOffLightSwitch_Create(unsigned int param0, HRESULT &hr)
{
    const auto node = reinterpret_cast<esp_matter::node_t*>(param0);

    esp_matter::endpoint::on_off_light_switch::config_t config1 = {};
    const auto endpoint = esp_matter::endpoint::on_off_light_switch::create(node, &config1, 0, nullptr);

    const auto retValue = reinterpret_cast<unsigned int>(endpoint);

    return retValue;
}
