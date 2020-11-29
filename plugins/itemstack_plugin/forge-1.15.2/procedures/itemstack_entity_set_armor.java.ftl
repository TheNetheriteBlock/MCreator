<#include "mcitems.ftl">
if (${input$entity} instanceof LivingEntity) {
	((LivingEntity)${input$entity}).setItemStackToSlot(EquipmentSlotType.fromSlotTypeAndIndex(EquipmentSlotType.Group.ARMOR, ${input$index}), ${mappedMCItemToItemStackCode(input$item_stack, 1)});
	if (${input$entity} instanceof ServerPlayerEntity)
		((ServerPlayerEntity)${input$entity}).inventory.markDirty();
}