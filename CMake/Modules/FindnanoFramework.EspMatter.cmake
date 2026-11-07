#
# Copyright (c) .NET Foundation and Contributors
# See LICENSE file in the project root for full license information.
#

add_definitions(-DCHIP_HAVE_CONFIG_H)

# native code directory
set(BASE_PATH_FOR_THIS_MODULE ${BASE_PATH_FOR_CLASS_LIBRARIES_MODULES}/nanoFramework.EspMatter)

# set include directories
list(APPEND nanoFramework.EspMatter_INCLUDE_DIRS ${BASE_PATH_FOR_THIS_MODULE})
# [build] /workspaces/nf-interpreter/targets/ESP32/_nanoCLR/nanoFramework.EspMatter/nanoFramework_EspMatter_nanoFramework_EspMatter_Matter.cpp:1:10: fatal error: esp_matter_core.h: No such file or directory
list(APPEND nanoFramework.EspMatter_INCLUDE_DIRS ${IDF_PATH_CMAKED}/components/esp_matter/components/esp_matter)
# [build] In file included from /workspaces/nf-interpreter/targets/ESP32/_nanoCLR/nanoFramework.EspMatter/nanoFramework_EspMatter_nanoFramework_EspMatter_Matter.cpp:3:
# [build] /sources/esp-idf/components/esp_matter/components/esp_matter/esp_matter_core.h:17:10: fatal error: app/CASESessionManager.h: No such file or directory
list(APPEND nanoFramework.EspMatter_INCLUDE_DIRS ${IDF_PATH_CMAKED}/components/esp_matter/connectedhomeip/connectedhomeip/src)
# [build] In file included from /sources/esp-idf/components/esp_matter/connectedhomeip/connectedhomeip/src/lib/core/DataModelTypes.h:22,
# [build]                  from /sources/esp-idf/components/esp_matter/connectedhomeip/connectedhomeip/src/app/util/basic-types.h:27,
# [build]                  from /sources/esp-idf/components/esp_matter/connectedhomeip/connectedhomeip/src/credentials/GroupDataProvider.h:23,
# [build]                  from /sources/esp-idf/components/esp_matter/connectedhomeip/connectedhomeip/src/app/CASEClient.h:20,
# [build]                  from /sources/esp-idf/components/esp_matter/connectedhomeip/connectedhomeip/src/app/CASEClientPool.h:20,
# [build]                  from /sources/esp-idf/components/esp_matter/connectedhomeip/connectedhomeip/src/app/CASESessionManager.h:21,
# [build]                  from /sources/esp-idf/components/esp_matter/components/esp_matter/esp_matter_core.h:17,
# [build]                  from /workspaces/nf-interpreter/targets/ESP32/_nanoCLR/nanoFramework.EspMatter/nanoFramework_EspMatter_nanoFramework_EspMatter_Matter.cpp:3:
# [build] /sources/esp-idf/components/esp_matter/connectedhomeip/connectedhomeip/src/lib/core/CHIPConfig.h:39:10: fatal error: core/CHIPBuildConfig.h: No such file or directory
list(APPEND nanoFramework.EspMatter_INCLUDE_DIRS ${CMAKE_BINARY_DIR}/esp-idf/esp_matter)
# [build] In file included from /sources/esp-idf/components/esp_matter/connectedhomeip/connectedhomeip/src/lib/support/BufferReader.h:26,
# [build]                  from /sources/esp-idf/components/esp_matter/connectedhomeip/connectedhomeip/src/crypto/CHIPCryptoPAL.h:36,
# [build]                  from /sources/esp-idf/components/esp_matter/connectedhomeip/connectedhomeip/src/credentials/GroupDataProvider.h:24,
# [build]                  from /sources/esp-idf/components/esp_matter/connectedhomeip/connectedhomeip/src/app/CASEClient.h:20,
# [build]                  from /sources/esp-idf/components/esp_matter/connectedhomeip/connectedhomeip/src/app/CASEClientPool.h:20,
# [build]                  from /sources/esp-idf/components/esp_matter/connectedhomeip/connectedhomeip/src/app/CASESessionManager.h:21,
# [build]                  from /sources/esp-idf/components/esp_matter/components/esp_matter/esp_matter_core.h:17,
# [build]                  from /workspaces/nf-interpreter/targets/ESP32/_nanoCLR/nanoFramework.EspMatter/nanoFramework_EspMatter_nanoFramework_EspMatter_Matter.cpp:3:
# [build] /sources/esp-idf/components/esp_matter/connectedhomeip/connectedhomeip/src/lib/core/CHIPEncoding.h:43:10: fatal error: nlbyteorder.hpp: No such file or directory
list(APPEND nanoFramework.EspMatter_INCLUDE_DIRS ${IDF_PATH_CMAKED}/components/esp_matter/connectedhomeip/connectedhomeip/third_party/nlio/repo/include)
# [build] In file included from /sources/esp-idf/components/esp_matter/connectedhomeip/connectedhomeip/src/credentials/GroupDataProvider.h:26,
# [build]                  from /sources/esp-idf/components/esp_matter/connectedhomeip/connectedhomeip/src/app/CASEClient.h:20,
# [build]                  from /sources/esp-idf/components/esp_matter/connectedhomeip/connectedhomeip/src/app/CASEClientPool.h:20,
# [build]                  from /sources/esp-idf/components/esp_matter/connectedhomeip/connectedhomeip/src/app/CASESessionManager.h:21,
# [build]                  from /sources/esp-idf/components/esp_matter/components/esp_matter/esp_matter_core.h:17,
# [build]                  from /workspaces/nf-interpreter/targets/ESP32/_nanoCLR/nanoFramework.EspMatter/nanoFramework_EspMatter_nanoFramework_EspMatter_Matter.cpp:3:
# [build] /sources/esp-idf/components/esp_matter/connectedhomeip/connectedhomeip/src/lib/core/ClusterEnums.h:28:10: fatal error: app-common/zap-generated/cluster-enums.h: No such file or directory
list(APPEND nanoFramework.EspMatter_INCLUDE_DIRS ${IDF_PATH_CMAKED}/components/esp_matter/connectedhomeip/connectedhomeip/zzz_generated/app-common)
# [build] In file included from /sources/esp-idf/components/esp_matter/connectedhomeip/connectedhomeip/src/transport/GroupSession.h:23,
# [build]                  from /sources/esp-idf/components/esp_matter/connectedhomeip/connectedhomeip/src/transport/SessionManager.h:42,
# [build]                  from /sources/esp-idf/components/esp_matter/connectedhomeip/connectedhomeip/src/messaging/ExchangeMessageDispatch.h:28,
# [build]                  from /sources/esp-idf/components/esp_matter/connectedhomeip/connectedhomeip/src/messaging/ApplicationExchangeDispatch.h:28,
# [build]                  from /sources/esp-idf/components/esp_matter/connectedhomeip/connectedhomeip/src/messaging/ExchangeDelegate.h:27,
# [build]                  from /sources/esp-idf/components/esp_matter/connectedhomeip/connectedhomeip/src/messaging/ExchangeContext.h:31,
# [build]                  from /sources/esp-idf/components/esp_matter/connectedhomeip/connectedhomeip/src/messaging/ExchangeMgr.h:32,
# [build]                  from /sources/esp-idf/components/esp_matter/connectedhomeip/connectedhomeip/src/app/CASEClient.h:21,
# [build]                  from /sources/esp-idf/components/esp_matter/connectedhomeip/connectedhomeip/src/app/CASEClientPool.h:20,
# [build]                  from /sources/esp-idf/components/esp_matter/connectedhomeip/connectedhomeip/src/app/CASESessionManager.h:21,
# [build]                  from /sources/esp-idf/components/esp_matter/components/esp_matter/esp_matter_core.h:17,
# [build]                  from /workspaces/nf-interpreter/targets/ESP32/_nanoCLR/nanoFramework.EspMatter/nanoFramework_EspMatter_nanoFramework_EspMatter_Matter.cpp:3:
# [build] /sources/esp-idf/components/esp_matter/connectedhomeip/connectedhomeip/src/transport/Session.h:29:10: fatal error: platform/LockTracker.h: No such file or directory
list(APPEND nanoFramework.EspMatter_INCLUDE_DIRS ${IDF_PATH_CMAKED}/components/esp_matter/connectedhomeip/connectedhomeip/src/include)

# [build] In file included from /sources/esp-idf/components/esp_matter/connectedhomeip/connectedhomeip/src/platform/ESP32/ThreadStackManagerImpl.h:34,
# [build]                  from /sources/esp-idf/components/esp_matter/connectedhomeip/connectedhomeip/src/include/platform/ThreadStackManager.h:249,
# [build]                  from /sources/esp-idf/components/esp_matter/connectedhomeip/connectedhomeip/src/include/platform/internal/GenericConnectivityManagerImpl_Thread.h:29,
# [build]                  from /sources/esp-idf/components/esp_matter/connectedhomeip/connectedhomeip/src/platform/ESP32/ConnectivityManagerImpl.h:40,
# [build]                  from /sources/esp-idf/components/esp_matter/connectedhomeip/connectedhomeip/src/include/platform/ConnectivityManager.h:338,
# [build]                  from /sources/esp-idf/components/esp_matter/connectedhomeip/connectedhomeip/src/platform/ESP32/ConfigurationManagerImpl.h:30,
# [build]                  from /sources/esp-idf/components/esp_matter/connectedhomeip/connectedhomeip/src/include/platform/ConfigurationManager.h:233,
# [build]                  from /sources/esp-idf/components/esp_matter/connectedhomeip/connectedhomeip/src/include/platform/CHIPDeviceLayer.h:27,
# [build]                  from /sources/esp-idf/components/esp_matter/connectedhomeip/connectedhomeip/src/app/CASESessionManager.h:28,
# [build]                  from /sources/esp-idf/components/esp_matter/components/esp_matter/esp_matter_core.h:17,
# [build]                  from /workspaces/nf-interpreter/targets/ESP32/_nanoCLR/nanoFramework.EspMatter/nanoFramework_EspMatter_nanoFramework_EspMatter_Matter.cpp:3:
# [build] /sources/esp-idf/components/esp_matter/connectedhomeip/connectedhomeip/src/platform/OpenThread/GenericThreadStackManagerImpl_OpenThread.h:28:10: fatal error: openthread/instance.h: No such file or directory
list(APPEND nanoFramework.EspMatter_INCLUDE_DIRS ${IDF_PATH_CMAKED}/components/openthread/openthread/include)

# [build] In file included from /sources/esp-idf/components/esp_matter/connectedhomeip/connectedhomeip/src/include/platform/internal/BLEManager.h:106,
# [build]                  from /sources/esp-idf/components/esp_matter/connectedhomeip/connectedhomeip/src/include/platform/internal/GenericConnectivityManagerImpl_BLE.h:27,
# [build]                  from /sources/esp-idf/components/esp_matter/connectedhomeip/connectedhomeip/src/platform/ESP32/ConnectivityManagerImpl.h:46,
# [build]                  from /sources/esp-idf/components/esp_matter/connectedhomeip/connectedhomeip/src/include/platform/ConnectivityManager.h:338,
# [build]                  from /sources/esp-idf/components/esp_matter/connectedhomeip/connectedhomeip/src/platform/ESP32/ConfigurationManagerImpl.h:30,
# [build]                  from /sources/esp-idf/components/esp_matter/connectedhomeip/connectedhomeip/src/include/platform/ConfigurationManager.h:233,
# [build]                  from /sources/esp-idf/components/esp_matter/connectedhomeip/connectedhomeip/src/include/platform/CHIPDeviceLayer.h:27,
# [build]                  from /sources/esp-idf/components/esp_matter/connectedhomeip/connectedhomeip/src/app/CASESessionManager.h:28,
# [build]                  from /sources/esp-idf/components/esp_matter/components/esp_matter/esp_matter_core.h:17,
# [build]                  from /workspaces/nf-interpreter/targets/ESP32/_nanoCLR/nanoFramework.EspMatter/nanoFramework_EspMatter_nanoFramework_EspMatter_Matter.cpp:3:
# [build] /sources/esp-idf/components/esp_matter/connectedhomeip/connectedhomeip/src/platform/ESP32/BLEManagerImpl.h:52:10: fatal error: host/ble_hs.h: No such file or directory
list(APPEND nanoFramework.EspMatter_INCLUDE_DIRS ${IDF_PATH_CMAKED}/components/bt/host/nimble/nimble/nimble/host/include)
# [build] In file included from /sources/esp-idf/components/esp_matter/connectedhomeip/connectedhomeip/src/platform/ESP32/BLEManagerImpl.h:52,
# [build]                  from /sources/esp-idf/components/esp_matter/connectedhomeip/connectedhomeip/src/include/platform/internal/BLEManager.h:106,
# [build]                  from /sources/esp-idf/components/esp_matter/connectedhomeip/connectedhomeip/src/include/platform/internal/GenericConnectivityManagerImpl_BLE.h:27,
# [build]                  from /sources/esp-idf/components/esp_matter/connectedhomeip/connectedhomeip/src/platform/ESP32/ConnectivityManagerImpl.h:46,
# [build]                  from /sources/esp-idf/components/esp_matter/connectedhomeip/connectedhomeip/src/include/platform/ConnectivityManager.h:338,
# [build]                  from /sources/esp-idf/components/esp_matter/connectedhomeip/connectedhomeip/src/platform/ESP32/ConfigurationManagerImpl.h:30,
# [build]                  from /sources/esp-idf/components/esp_matter/connectedhomeip/connectedhomeip/src/include/platform/ConfigurationManager.h:233,
# [build]                  from /sources/esp-idf/components/esp_matter/connectedhomeip/connectedhomeip/src/include/platform/CHIPDeviceLayer.h:27,
# [build]                  from /sources/esp-idf/components/esp_matter/connectedhomeip/connectedhomeip/src/app/CASESessionManager.h:28,
# [build]                  from /sources/esp-idf/components/esp_matter/components/esp_matter/esp_matter_core.h:17,
# [build]                  from /workspaces/nf-interpreter/targets/ESP32/_nanoCLR/nanoFramework.EspMatter/nanoFramework_EspMatter_nanoFramework_EspMatter_Matter.cpp:3:
# [build] /sources/esp-idf/components/bt/host/nimble/nimble/nimble/host/include/host/ble_hs.h:30:10: fatal error: nimble/hci_common.h: No such file or directory
list(APPEND nanoFramework.EspMatter_INCLUDE_DIRS ${IDF_PATH_CMAKED}/components/bt/host/nimble/nimble/nimble/include)
# [build] In file included from /sources/esp-idf/components/bt/host/nimble/nimble/nimble/include/nimble/hci_common.h:30,
# [build]                  from /sources/esp-idf/components/bt/host/nimble/nimble/nimble/host/include/host/ble_hs.h:30,
# [build]                  from /sources/esp-idf/components/esp_matter/connectedhomeip/connectedhomeip/src/platform/ESP32/BLEManagerImpl.h:52,
# [build]                  from /sources/esp-idf/components/esp_matter/connectedhomeip/connectedhomeip/src/include/platform/internal/BLEManager.h:106,
# [build]                  from /sources/esp-idf/components/esp_matter/connectedhomeip/connectedhomeip/src/include/platform/internal/GenericConnectivityManagerImpl_BLE.h:27,
# [build]                  from /sources/esp-idf/components/esp_matter/connectedhomeip/connectedhomeip/src/platform/ESP32/ConnectivityManagerImpl.h:46,
# [build]                  from /sources/esp-idf/components/esp_matter/connectedhomeip/connectedhomeip/src/include/platform/ConnectivityManager.h:338,
# [build]                  from /sources/esp-idf/components/esp_matter/connectedhomeip/connectedhomeip/src/platform/ESP32/ConfigurationManagerImpl.h:30,
# [build]                  from /sources/esp-idf/components/esp_matter/connectedhomeip/connectedhomeip/src/include/platform/ConfigurationManager.h:233,
# [build]                  from /sources/esp-idf/components/esp_matter/connectedhomeip/connectedhomeip/src/include/platform/CHIPDeviceLayer.h:27,
# [build]                  from /sources/esp-idf/components/esp_matter/connectedhomeip/connectedhomeip/src/app/CASESessionManager.h:28,
# [build]                  from /sources/esp-idf/components/esp_matter/components/esp_matter/esp_matter_core.h:17,
# [build]                  from /workspaces/nf-interpreter/targets/ESP32/_nanoCLR/nanoFramework.EspMatter/nanoFramework_EspMatter_nanoFramework_EspMatter_Matter.cpp:3:
# [build] /sources/esp-idf/components/bt/host/nimble/nimble/nimble/include/nimble/ble.h:25:10: fatal error: syscfg/syscfg.h: No such file or directory
list(APPEND nanoFramework.EspMatter_INCLUDE_DIRS ${IDF_PATH_CMAKED}/components/bt/host/nimble/nimble/porting/nimble/include)
# [build] In file included from /sources/esp-idf/components/bt/host/nimble/nimble/nimble/include/nimble/ble.h:25,
# [build]                  from /sources/esp-idf/components/bt/host/nimble/nimble/nimble/include/nimble/hci_common.h:30,
# [build]                  from /sources/esp-idf/components/bt/host/nimble/nimble/nimble/host/include/host/ble_hs.h:30,
# [build]                  from /sources/esp-idf/components/esp_matter/connectedhomeip/connectedhomeip/src/platform/ESP32/BLEManagerImpl.h:52,
# [build]                  from /sources/esp-idf/components/esp_matter/connectedhomeip/connectedhomeip/src/include/platform/internal/BLEManager.h:106,
# [build]                  from /sources/esp-idf/components/esp_matter/connectedhomeip/connectedhomeip/src/include/platform/internal/GenericConnectivityManagerImpl_BLE.h:27,
# [build]                  from /sources/esp-idf/components/esp_matter/connectedhomeip/connectedhomeip/src/platform/ESP32/ConnectivityManagerImpl.h:46,
# [build]                  from /sources/esp-idf/components/esp_matter/connectedhomeip/connectedhomeip/src/include/platform/ConnectivityManager.h:338,
# [build]                  from /sources/esp-idf/components/esp_matter/connectedhomeip/connectedhomeip/src/platform/ESP32/ConfigurationManagerImpl.h:30,
# [build]                  from /sources/esp-idf/components/esp_matter/connectedhomeip/connectedhomeip/src/include/platform/ConfigurationManager.h:233,
# [build]                  from /sources/esp-idf/components/esp_matter/connectedhomeip/connectedhomeip/src/include/platform/CHIPDeviceLayer.h:27,
# [build]                  from /sources/esp-idf/components/esp_matter/connectedhomeip/connectedhomeip/src/app/CASESessionManager.h:28,
# [build]                  from /sources/esp-idf/components/esp_matter/components/esp_matter/esp_matter_core.h:17,
# [build]                  from /workspaces/nf-interpreter/targets/ESP32/_nanoCLR/nanoFramework.EspMatter/nanoFramework_EspMatter_nanoFramework_EspMatter_Matter.cpp:3:
# [build] /sources/esp-idf/components/bt/host/nimble/nimble/porting/nimble/include/syscfg/syscfg.h:9:10: fatal error: esp_nimble_cfg.h: No such file or directory
list(APPEND nanoFramework.EspMatter_INCLUDE_DIRS ${IDF_PATH_CMAKED}/components/bt/host/nimble/port/include)
# [build] In file included from /sources/esp-idf/components/bt/host/nimble/nimble/porting/nimble/include/os/os.h:34,
# [build]                  from /sources/esp-idf/components/bt/host/nimble/nimble/nimble/include/nimble/ble.h:26,
# [build]                  from /sources/esp-idf/components/bt/host/nimble/nimble/nimble/include/nimble/hci_common.h:30,
# [build]                  from /sources/esp-idf/components/bt/host/nimble/nimble/nimble/host/include/host/ble_hs.h:30,
# [build]                  from /sources/esp-idf/components/esp_matter/connectedhomeip/connectedhomeip/src/platform/ESP32/BLEManagerImpl.h:52,
# [build]                  from /sources/esp-idf/components/esp_matter/connectedhomeip/connectedhomeip/src/include/platform/internal/BLEManager.h:106,
# [build]                  from /sources/esp-idf/components/esp_matter/connectedhomeip/connectedhomeip/src/include/platform/internal/GenericConnectivityManagerImpl_BLE.h:27,
# [build]                  from /sources/esp-idf/components/esp_matter/connectedhomeip/connectedhomeip/src/platform/ESP32/ConnectivityManagerImpl.h:46,
# [build]                  from /sources/esp-idf/components/esp_matter/connectedhomeip/connectedhomeip/src/include/platform/ConnectivityManager.h:338,
# [build]                  from /sources/esp-idf/components/esp_matter/connectedhomeip/connectedhomeip/src/platform/ESP32/ConfigurationManagerImpl.h:30,
# [build]                  from /sources/esp-idf/components/esp_matter/connectedhomeip/connectedhomeip/src/include/platform/ConfigurationManager.h:233,
# [build]                  from /sources/esp-idf/components/esp_matter/connectedhomeip/connectedhomeip/src/include/platform/CHIPDeviceLayer.h:27,
# [build]                  from /sources/esp-idf/components/esp_matter/connectedhomeip/connectedhomeip/src/app/CASESessionManager.h:28,
# [build]                  from /sources/esp-idf/components/esp_matter/components/esp_matter/esp_matter_core.h:17,
# [build]                  from /workspaces/nf-interpreter/targets/ESP32/_nanoCLR/nanoFramework.EspMatter/nanoFramework_EspMatter_nanoFramework_EspMatter_Matter.cpp:3:
# [build] /sources/esp-idf/components/bt/host/nimble/nimble/nimble/include/nimble/nimble_npl.h:53:10: fatal error: nimble/nimble_npl_os.h: No such file or directory
list(APPEND nanoFramework.EspMatter_INCLUDE_DIRS ${IDF_PATH_CMAKED}/components/bt/host/nimble/nimble/porting/npl/freertos/include)
# [build] In file included from /sources/esp-idf/components/bt/host/nimble/nimble/nimble/include/nimble/ble.h:26,
# [build]                  from /sources/esp-idf/components/bt/host/nimble/nimble/nimble/include/nimble/hci_common.h:30,
# [build]                  from /sources/esp-idf/components/bt/host/nimble/nimble/nimble/host/include/host/ble_hs.h:30,
# [build]                  from /sources/esp-idf/components/esp_matter/connectedhomeip/connectedhomeip/src/platform/ESP32/BLEManagerImpl.h:52,
# [build]                  from /sources/esp-idf/components/esp_matter/connectedhomeip/connectedhomeip/src/include/platform/internal/BLEManager.h:106,
# [build]                  from /sources/esp-idf/components/esp_matter/connectedhomeip/connectedhomeip/src/include/platform/internal/GenericConnectivityManagerImpl_BLE.h:27,
# [build]                  from /sources/esp-idf/components/esp_matter/connectedhomeip/connectedhomeip/src/platform/ESP32/ConnectivityManagerImpl.h:46,
# [build]                  from /sources/esp-idf/components/esp_matter/connectedhomeip/connectedhomeip/src/include/platform/ConnectivityManager.h:338,
# [build]                  from /sources/esp-idf/components/esp_matter/connectedhomeip/connectedhomeip/src/platform/ESP32/ConfigurationManagerImpl.h:30,
# [build]                  from /sources/esp-idf/components/esp_matter/connectedhomeip/connectedhomeip/src/include/platform/ConfigurationManager.h:233,
# [build]                  from /sources/esp-idf/components/esp_matter/connectedhomeip/connectedhomeip/src/include/platform/CHIPDeviceLayer.h:27,
# [build]                  from /sources/esp-idf/components/esp_matter/connectedhomeip/connectedhomeip/src/app/CASESessionManager.h:28,
# [build]                  from /sources/esp-idf/components/esp_matter/components/esp_matter/esp_matter_core.h:17,
# [build]                  from /workspaces/nf-interpreter/targets/ESP32/_nanoCLR/nanoFramework.EspMatter/nanoFramework_EspMatter_nanoFramework_EspMatter_Matter.cpp:3:
# [build] /sources/esp-idf/components/bt/host/nimble/nimble/porting/nimble/include/os/os.h:53:10: fatal error: os/os_mempool.h: No such file or directory
list(APPEND nanoFramework.EspMatter_INCLUDE_DIRS ${IDF_PATH_CMAKED}/components/bt/porting/include)
# [build] In file included from /sources/esp-idf/components/bt/host/nimble/nimble/nimble/host/include/host/ble_hs.h:30,
# [build]                  from /sources/esp-idf/components/esp_matter/connectedhomeip/connectedhomeip/src/platform/ESP32/BLEManagerImpl.h:52,
# [build]                  from /sources/esp-idf/components/esp_matter/connectedhomeip/connectedhomeip/src/include/platform/internal/BLEManager.h:106,
# [build]                  from /sources/esp-idf/components/esp_matter/connectedhomeip/connectedhomeip/src/include/platform/internal/GenericConnectivityManagerImpl_BLE.h:27,
# [build]                  from /sources/esp-idf/components/esp_matter/connectedhomeip/connectedhomeip/src/platform/ESP32/ConnectivityManagerImpl.h:46,
# [build]                  from /sources/esp-idf/components/esp_matter/connectedhomeip/connectedhomeip/src/include/platform/ConnectivityManager.h:338,
# [build]                  from /sources/esp-idf/components/esp_matter/connectedhomeip/connectedhomeip/src/platform/ESP32/ConfigurationManagerImpl.h:30,
# [build]                  from /sources/esp-idf/components/esp_matter/connectedhomeip/connectedhomeip/src/include/platform/ConfigurationManager.h:233,
# [build]                  from /sources/esp-idf/components/esp_matter/connectedhomeip/connectedhomeip/src/include/platform/CHIPDeviceLayer.h:27,
# [build]                  from /sources/esp-idf/components/esp_matter/connectedhomeip/connectedhomeip/src/app/CASESessionManager.h:28,
# [build]                  from /sources/esp-idf/components/esp_matter/components/esp_matter/esp_matter_core.h:17,
# [build]                  from /workspaces/nf-interpreter/targets/ESP32/_nanoCLR/nanoFramework.EspMatter/nanoFramework_EspMatter_nanoFramework_EspMatter_Matter.cpp:3:
# [build] /sources/esp-idf/components/bt/host/nimble/nimble/nimble/include/nimble/hci_common.h:31:10: fatal error: nimble/transport.h: No such file or directory
list(APPEND nanoFramework.EspMatter_INCLUDE_DIRS ${IDF_PATH_CMAKED}/components/bt/host/nimble/nimble/nimble/transport/include)



# source files
set(nanoFramework.EspMatter_SRCS
    nanoFramework_EspMatter.cpp
    nanoFramework_EspMatter_nanoFramework_EspMatter_Matter_mshl.cpp
    nanoFramework_EspMatter_nanoFramework_EspMatter_Matter.cpp
)

foreach(SRC_FILE ${nanoFramework.EspMatter_SRCS})

    set(nanoFramework.EspMatter_SRC_FILE SRC_FILE-NOTFOUND)

    find_file(nanoFramework.EspMatter_SRC_FILE ${SRC_FILE}
        PATHS
            ${BASE_PATH_FOR_THIS_MODULE}

        CMAKE_FIND_ROOT_PATH_BOTH
    )

    if (BUILD_VERBOSE)
        message("${SRC_FILE} >> ${nanoFramework.EspMatter_SRC_FILE}")
    endif()

    list(APPEND nanoFramework.EspMatter_SOURCES ${nanoFramework.EspMatter_SRC_FILE})

endforeach()

include(FindPackageHandleStandardArgs)

FIND_PACKAGE_HANDLE_STANDARD_ARGS(
    nanoFramework.EspMatter
    DEFAULT_MSG
    nanoFramework.EspMatter_INCLUDE_DIRS
    nanoFramework.EspMatter_SOURCES
)
