{
  "trigger": "minecraft:tick",
  "conditions": {
    "player": [
      {
        "condition": "minecraft:reference",
        "name": "${input$predicate}"
      }
    ]
  }
}