<#assign entity = generator.map(field$entity, "entities")>
{
  "trigger": "minecraft:player_killed_entity",
  "conditions": {
    "entity": {
      "type": "${entity}"
    },
    "killing_blow": {
      "source_entity": {
        "equipment": {
          "mainhand": {
            "item": "${input$item}"
          }
        }
      }
    }
  }
}