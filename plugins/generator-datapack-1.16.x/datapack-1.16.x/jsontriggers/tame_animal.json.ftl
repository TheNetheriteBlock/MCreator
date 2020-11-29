<#assign entity = generator.map(field$entity, "entities")>
{
  "trigger": "minecraft:tame_animal",
  "conditions": {
    "entity": {
      "type": "${entity}"
    }
  }
}