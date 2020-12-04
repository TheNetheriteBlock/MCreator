<#function mappedMCItemToIngameItemName mappedBlock>
    <#if mappedBlock.getUnmappedValue().startsWith("CUSTOM:")>
        <#assign customelement = generator.getRegistryNameForModElement(mappedBlock.getUnmappedValue().replace("CUSTOM:", "")
        .replace(".helmet", "").replace(".body", "").replace(".legs", "").replace(".boots", ""))!""/>
        <#if customelement?has_content>
            <#return "\"item\": \"" + "${modid}:" + customelement
            + (mappedBlock.getUnmappedValue().contains(".helmet"))?then("helmet", "")
            + (mappedBlock.getUnmappedValue().contains(".body"))?then("body", "")
            + (mappedBlock.getUnmappedValue().contains(".legs"))?then("legs", "")
            + (mappedBlock.getUnmappedValue().contains(".boots"))?then("boots", "")
            + "\"">
        <#else>
            <#return "\"item\": \"minecraft:air\"">
        </#if>
    <#elseif mappedBlock.getUnmappedValue().startsWith("TAG:")>
        <#return "\"tag\": \"" + mappedBlock.getUnmappedValue().replace("TAG:", "") + "\"">
    <#else>
        <#assign mapped = mappedBlock.toString() />
        <#if mapped.startsWith("#")>
            <#return "\"tag\": \"" + mapped.replace("#", "") + "\"">
        <#else>
            <#return "\"item\": \"minecraft:" + mapped + "\"">
        </#if>
    </#if>
</#function>

<#function mappedMCItemToIngameNameNoTags mappedBlock>
    <#if mappedBlock.getUnmappedValue().startsWith("CUSTOM:")>
        <#assign customelement = generator.getRegistryNameForModElement(mappedBlock.getUnmappedValue().replace("CUSTOM:", "")
        .replace(".helmet", "").replace(".body", "").replace(".legs", "").replace(".boots", ""))!""/>
        <#if customelement?has_content>
            <#return "${modid}:" + customelement
            + (mappedBlock.getUnmappedValue().contains(".helmet"))?then("helmet", "")
            + (mappedBlock.getUnmappedValue().contains(".body"))?then("body", "")
            + (mappedBlock.getUnmappedValue().contains(".legs"))?then("legs", "")
            + (mappedBlock.getUnmappedValue().contains(".boots"))?then("boots", "")>
        <#else>
            <#return "minecraft:air">
        </#if>
    <#elseif mappedBlock.getUnmappedValue().startsWith("TAG:")>
        <#return "minecraft:air">
    <#else>
        <#assign mapped = mappedBlock.toString() />
        <#if mapped.startsWith("#")>
            <#return "minecraft:air">
        <#else>
            <#return "minecraft:" + mapped>
        </#if>
    </#if>
</#function>