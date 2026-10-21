#include "nanoFramework_EspMatter.h"
#include "nanoFramework_EspMatter_nanoFramework_EspMatter_Matter.h"
#include "esp_matter_core.h"

using namespace nanoFramework_EspMatter::nanoFramework_EspMatter;

bool Matter::EspMatter_IsStarted(  HRESULT &hr )
{

    (void)hr;
    bool retValue = 0;

    ////////////////////////////////
    // implementation starts here //

    // esp-matter is started

    retValue = true;

    // implementation ends here   //
    ////////////////////////////////

    return retValue;
}
