<#include "mcitems.ftl">
if (${input$entity} instanceof PlayerEntity) {
	((PlayerEntity)${input$entity}).inventory.setInventorySlotContents((int) ${input$index}, ${mappedMCItemToItemStackCode(input$item_stack, 1)});
	if (${input$entity} instanceof ServerPlayerEntity)
		((ServerPlayerEntity)${input$entity}).inventory.markDirty();
}