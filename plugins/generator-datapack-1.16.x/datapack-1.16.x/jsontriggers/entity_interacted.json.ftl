<#assign entity = generator.map(field$entity, "entities")>
{
  "trigger": "minecraft:player_interacted_with_entity",
  "conditions": {
    "item": {
      "item": "${input$item}"
	},
    "entity": {
      "type": "${entity}"
    }
  }
}
