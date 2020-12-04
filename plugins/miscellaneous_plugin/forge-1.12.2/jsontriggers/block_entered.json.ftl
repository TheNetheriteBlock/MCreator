<#include "misc_getdefaultblock.ftl">
{
  "trigger": "minecraft:enter_block",
  "conditions": {
    "block": "${getBlockWithoutMetadata(input$block)}"
  }
}