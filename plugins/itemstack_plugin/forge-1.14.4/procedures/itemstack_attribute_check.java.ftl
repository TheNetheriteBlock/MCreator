<#include "mcitems.ftl">
((${mappedMCItemToItemStackCode(input$item_stack, 1)}).getAttributeModifiers(EquipmentSlotType.${field$slot}).containsKey("generic.${field$attribute}"))