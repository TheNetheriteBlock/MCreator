if (${input$selectedEntity} instanceof LivingEntity) {
    LivingEntity livingEntity = (LivingEntity) dependencies.get("${input$selectedEntity}");
	livingEntity.getAttribute(SharedMonsterAttributes.MAX_HEALTH).setBaseValue(${input$inputValue});
};