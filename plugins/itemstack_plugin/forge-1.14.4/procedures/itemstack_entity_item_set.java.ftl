<#include "mcitems.ftl">
if (${input$entity} instanceof ItemEntity) {
	((ItemEntity)${input$entity}).setItem(${mappedMCItemToItemStackCode(input$item_stack, 1)});
}