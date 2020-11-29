{
  "trigger": "minecraft:location",
  "conditions": {
    "location": {
      "position": {
        "x": {
          "min": ${input$minx},
          "max": ${input$maxx}
        },
        "y": {
          "min": ${input$miny},
          "max": ${input$maxy}
        },
        "z": {
          "min": ${input$minz},
          "max": ${input$maxz}
        }
      }
    }
  }
}