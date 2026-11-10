#include "nanoFramework_EspMatter.h"
#include "nanoFramework_EspMatter_nanoFramework_EspMatter_Node.h"

using namespace nanoFramework_EspMatter::nanoFramework_EspMatter;

HRESULT Library_nanoFramework_EspMatter_nanoFramework_EspMatter_Node::EspMatter_Node_Create___STATIC__U4(CLR_RT_StackFrame& stack)
{
    NANOCLR_HEADER();
    hr = S_OK;
    {
        unsigned int retValue = Node::EspMatter_Node_Create(hr);
        NANOCLR_CHECK_HRESULT(hr);
        SetResult_UINT32(stack, retValue);
    }
    NANOCLR_NOCLEANUP();
}
