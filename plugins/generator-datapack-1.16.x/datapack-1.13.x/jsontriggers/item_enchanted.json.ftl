{
  "trigger": "minecraft:enchanted_item",
  "conditions": {
    "levels": {
      "min": ${input$min},
      "max": ${input$max}
    },
    "item": {
      "item": "${input$item}"
    }
  }
}