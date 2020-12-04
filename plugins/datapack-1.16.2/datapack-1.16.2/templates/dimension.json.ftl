{
  "generator": {
    "type": "minecraft:noise",
    "seed": -1464245863,
    "biome_source": {
      "type": "minecraft:vanilla_layered",
      "seed": -1464245863,
      "large_biomes": true
    },
    "settings": {
      "default_block": {
        "Name": ${mappedBlockToBlockStateCode(data.mainFillerBlock)},
        "Properties": {}
      },
      "default_fluid": {
        "Name": ${mappedBlockToBlockStateCode(data.fluidBlock)},
        "Properties": {
          "level": "8"
        }
      },
      "bedrock_floor_position": -10,
      "bedrock_roof_position": -10,
      "sea_level": 32,
      "disable_mob_generation": false,
      "noise": {
        "height": 128,
        "sampling": {
          "xz_scale": 1,
          "y_scale": 3,
          "xz_factor": 80,
          "y_factor": 60
        },
        "top_slide": {
          "target": 120,
          "size": 3,
          "offset": 0
        },
        "bottom_slide": {
          "target": 320,
          "size": 4,
          "offset": -1
        },
        "size_horizontal": 1,
        "size_vertical": 2,
        "density_factor": 0.0,
        "density_offset": 0.019921875,
        "simplex_surface_noise": false,
        "random_density_offset": false,
        "island_noise_override": false,
        "amplified": false
      },
      "structures": {
        "stronghold": {
          "distance": 32,
          "spread": 3,
          "count": 128
        },
        "structures": {
          "minecraft:village": {
            "spacing": 32,
            "separation": 8,
            "salt": 10387312
          }
        }
      }
    }
  },
  "type": "${modid}:${name}"
}
