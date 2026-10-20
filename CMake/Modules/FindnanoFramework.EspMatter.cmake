#
# Copyright (c) .NET Foundation and Contributors
# See LICENSE file in the project root for full license information.
#

# native code directory
set(BASE_PATH_FOR_THIS_MODULE ${BASE_PATH_FOR_CLASS_LIBRARIES_MODULES}/nanoFramework.EspMatter)

# set include directories
list(APPEND nanoFramework.EspMatter_INCLUDE_DIRS ${PROJECT_SOURCE_DIR}/src/CLR/Core)
list(APPEND nanoFramework.EspMatter_INCLUDE_DIRS ${PROJECT_SOURCE_DIR}/src/CLR/Include)
list(APPEND nanoFramework.EspMatter_INCLUDE_DIRS ${PROJECT_SOURCE_DIR}/src/HAL/Include)
list(APPEND nanoFramework.EspMatter_INCLUDE_DIRS ${PROJECT_SOURCE_DIR}/src/PAL/Include)
list(APPEND nanoFramework.EspMatter_INCLUDE_DIRS ${BASE_PATH_FOR_THIS_MODULE})

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

FIND_PACKAGE_HANDLE_STANDARD_ARGS(nanoFramework.EspMatter DEFAULT_MSG nanoFramework.EspMatter_INCLUDE_DIRS nanoFramework.EspMatter_SOURCES)
