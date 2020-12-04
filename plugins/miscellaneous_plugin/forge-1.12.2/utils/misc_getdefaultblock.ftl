<#function getBlockWithoutMetadata mappedBlock>
    <#if !mappedBlock.toString().contains("#")>
        <#return mappedBlock>
    <#else>
        <#return mappedBlock.toString().split("#")[0]>
    </#if>
</#function>