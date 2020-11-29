<#-- @formatter:off -->
<#include "mcitems.ftl">

package ${package}.item;

public class ${name}Fuel {
    public static void initialize() {
        FuelRegistry.INSTANCE.add(${mappedMCItemToItem(data.block)}, ${data.power});
    }
}
<#-- @formatter:on -->