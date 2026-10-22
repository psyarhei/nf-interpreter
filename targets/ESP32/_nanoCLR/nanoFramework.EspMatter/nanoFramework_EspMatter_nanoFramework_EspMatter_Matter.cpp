#include "nanoFramework_EspMatter.h"
#include "nanoFramework_EspMatter_nanoFramework_EspMatter_Matter.h"
#include "<esp_matter_core.h>"

using namespace nanoFramework_EspMatter::nanoFramework_EspMatter;

bool Matter::EspMatter_IsStarted(  HRESULT &hr )
{
    (void)hr;

    return esp_matter::is_started();
}
