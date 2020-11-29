{
  <#if data.worldGenType == "Normal world gen" || data.worldGenType == "End like gen">
  "logical_height": 256,
  <#elseif data.worldGenType == "Nether like gen">
  "logical_height": 128,
  </#if>
  <#if data.worldGenType == "Normal world gen">
  "infiniburn": "minecraft:infiniburn_overworld",
  <#elseif data.worldGenType == "Nether like gen">
  "infiniburn": "minecraft:infiniburn_nether",
  <#elseif data.worldGenType == "End like gen">
  "infiniburn": "minecraft:infiniburn_end",
  </#if>
  "effects": "minecraft:overworld",
  <#if data.worldGenType == "Normal world gen" || data.worldGenType == "End like gen">
  "ambient_light": 0.0,
  <#elseif data.worldGenType == "Nether like gen">
  "ambient_light": 0.1,
  </#if>
  <#if data.sleepResult == "ALLOW">
  "bed_works": true,
  "respawn_anchor_works": false,
  <#elseif data.sleepResult == "DENY">
  "bed_works": false,
  "respawn_anchor_works": false,
  <#elseif data.sleepResult == "BED_EXPLODES">
  "bed_works": false,
  "respawn_anchor_works": true,
  </#if>
  <#if data.worldGenType == "Normal world gen">
  "has_raids": true,
  <#elseif data.worldGenType == "Nether like gen" || data.worldGenType == "End like gen">
  "has_raids": false,
  </#if>
  "ultrawarm": ${data.doesWaterVaporize},
  <#if data.worldGenType == "Normal world gen">
  "natural": true,
  <#elseif data.worldGenType == "Nether like gen" || data.worldGenType == "End like gen">
  "natural": false,
  </#if>
  <#if data.worldGenType == "Normal world gen" || data.worldGenType == "End like gen">
  "coordinate_scale": 1.0,
  <#elseif data.worldGenType == "Nether like gen">
  "coordinate_scale": 8.0,
  </#if>
  "piglin_safe": false,
  "has_skylight": ${data.hasSkyLight},
  <#if data.worldGenType == "Normal world gen" || data.worldGenType == "End like gen">
  "has_ceiling": false
  <#elseif data.worldGenType == "Nether like gen">
  "has_ceiling": true
  </#if>
}
