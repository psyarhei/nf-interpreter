//-----------------------------------------------------------------------------
//
//                   ** WARNING! ** 
//    This file was generated automatically by a tool.
//    Re-running the tool will overwrite this file.
//    You should copy this file to a custom location
//    before adding any customization in the copy to
//    prevent loss of your changes when the tool is
//    re-run.
//
//-----------------------------------------------------------------------------

#include "nanoFramework_EspMatter.h"
#include "nanoFramework_EspMatter_nanoFramework_EspMatter_Matter.h"
#include <esp_matter_core.h>

using namespace nanoFramework_EspMatter::nanoFramework_EspMatter;


bool Matter::EspMatter_IsStarted(  HRESULT &hr )
{

    (void)hr;
    bool retValue = esp_matter::is_started();

    ////////////////////////////////
    // implementation starts here //


    // implementation ends here   //
    ////////////////////////////////

    return retValue;
}
