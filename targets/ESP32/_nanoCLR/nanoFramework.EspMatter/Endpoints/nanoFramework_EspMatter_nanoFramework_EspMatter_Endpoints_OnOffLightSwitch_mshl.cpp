#include "nanoFramework_EspMatter.h"
#include "nanoFramework_EspMatter_nanoFramework_EspMatter_Endpoints_OnOffLightSwitch.h"

using namespace nanoFramework_EspMatter::nanoFramework_EspMatter;

HRESULT Library_nanoFramework_EspMatter_nanoFramework_EspMatter_Endpoints_OnOffLightSwitch::EspMatter_Endpoint_OnOffLightSwitch_Create___STATIC__U4__U4(CLR_RT_StackFrame& stack)
{
    NANOCLR_HEADER();
    hr = S_OK;
    {
        unsigned int param0;
        NANOCLR_CHECK_HRESULT(Interop_Marshal_UINT32(stack, 0, param0));

        unsigned int retValue = OnOffLightSwitch::EspMatter_Endpoint_OnOffLightSwitch_Create(param0, hr);
        NANOCLR_CHECK_HRESULT(hr);
        SetResult_UINT32(stack, retValue);
    }
    NANOCLR_NOCLEANUP();
}
