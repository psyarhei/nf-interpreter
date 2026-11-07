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
