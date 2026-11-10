// #include <queue>

#include <esp_matter_core.h>

// #include <platform/ESP32/OpenthreadLauncher.h>

#include "nanoFramework_EspMatter.h"
#include "nanoFramework_EspMatter_nanoFramework_EspMatter_Matter.h"

using namespace nanoFramework_EspMatter::nanoFramework_EspMatter;

// static void ClrDebugLogRedirect(const char * module, uint8_t category, const char * msg, va_list args)
// {
//     CLR_Debug::Printf("%s[%u]: ", module, static_cast<unsigned int>(category));
//     CLR_Debug::PrintfV(msg, args);
//     CLR_Debug::Printf("\r\n");
// }

bool Matter::EspMatter_IsStarted(HRESULT &hr)
{
    bool retValue = esp_matter::is_started();

    return retValue;
}

// static std::queue<ChipDeviceEvent> esp_matter_start_cb_payloads;


void Matter::EspMatter_Start(HRESULT &hr)
{
    // esp_openthread_platform_config_t otConfig;
    // otConfig.radio_config.radio_mode = RADIO_MODE_NATIVE;
    // otConfig.host_config.host_connection_mode = HOST_CONNECTION_MODE_NONE;
    // otConfig.port_config.storage_partition_name = "nvs";
    // otConfig.port_config.netif_queue_size = 10;
    // otConfig.port_config.task_queue_size = 10;
    // set_openthread_platform_config(&otConfig);

    // chip::Logging::SetLogRedirectCallback(ClrDebugLogRedirect);

    static auto callback = [](const ChipDeviceEvent *event, intptr_t arg) {
        // chip::DeviceLayer::DeviceEventType::PublicEventTypes::
        // // if (event->Type == chip::DeviceLayer::DeviceEventType::PublicEventTypes::kTimeSyncChange) {
        // //     auto t1 = event->TimeSyncChange.IsTimeSynchronized;
        // // } else if (event->Type == chip::DeviceLayer::DeviceEventType::PublicEventTypes::kThreadStateChange) {
        // //     auto t1 = event->ThreadStateChange.AddressChanged;
        // //     auto t2 = event->ThreadStateChange.ChildNodesChanged;
        // //     auto t3 = event->ThreadStateChange.NetDataChanged;
        // //     auto t4 = event->ThreadStateChange.RoleChanged;
        // //     auto t5 = event->ThreadStateChange.OpenThread.Flags;
        // // } else if (event->Type == chip::DeviceLayer::DeviceEventType::PublicEventTypes::kWiFiConnectivityChange) {
        // //     auto t1 = event->WiFiConnectivityChange.Result;
        // // } else if (event->Type == chip::DeviceLayer::DeviceEventType::PublicEventTypes::kBindingsChangedViaCluster) {
        // //     auto t1 = event->BindingsChanged.fabricIndex;
        // // } else if (event->Type == chip::DeviceLayer::DeviceEventType::PublicEventTypes::kBLEDeinitialized) {
            
        // // }

        const uint8_t matterEventCallbackSubcategory = 1;

        // esp_matter_start_cb_payloads.push(*event);
        PostManagedEvent(EVENT_CUSTOM, matterEventCallbackSubcategory, event->Type, 0);
    };

    auto espResult = esp_matter::start(callback);

    if (espResult != ESP_OK)
    {
        hr = CLR_E_FAIL;
    }
}
