#include <esp_matter_core.h>
#include "nanoFramework_EspMatter.h"
#include "nanoFramework_EspMatter_nanoFramework_EspMatter_Matter.h"

using namespace nanoFramework_EspMatter::nanoFramework_EspMatter;

bool Matter::EspMatter_IsStarted(HRESULT &hr)
{
    bool retValue = esp_matter::is_started();

    return retValue;
}

void Matter::EspMatter_Start(HRESULT &hr)
{
}