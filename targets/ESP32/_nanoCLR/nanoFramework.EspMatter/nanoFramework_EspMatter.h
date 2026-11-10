#ifndef NANOFRAMEWORK_ESPMATTER_H
#define NANOFRAMEWORK_ESPMATTER_H

#include <nanoCLR_Interop.h>
#include <nanoCLR_Runtime.h>
#include <nanoPackStruct.h>

struct Library_nanoFramework_EspMatter_nanoFramework_EspMatter_Matter
{
    NANOCLR_NATIVE_DECLARE(EspMatter_IsStarted___STATIC__BOOLEAN);
    NANOCLR_NATIVE_DECLARE(EspMatter_Start___STATIC__VOID);
    //--//
};

struct Library_nanoFramework_EspMatter_nanoFramework_EspMatter_Node
{
    static const int FIELD__NativeHandle = 1;
    NANOCLR_NATIVE_DECLARE(EspMatter_Node_Create___STATIC__U4);
    //--//
};

extern const CLR_RT_NativeAssemblyData g_CLR_AssemblyNative_nanoFramework_EspMatter;

#endif // NANOFRAMEWORK_ESPMATTER_H
