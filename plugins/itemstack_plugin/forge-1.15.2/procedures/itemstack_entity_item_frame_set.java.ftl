<#include "mcitems.ftl">
if (${input$entity} instanceof ItemFrameEntity) {
	((ItemFrameEntity)${input$entity}).setDisplayedItem(${mappedMCItemToItemStackCode(input$item_stack, 1)});
}