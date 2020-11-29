if (${input$selectedEntity} instanceof LivingEntity) {
  LivingEntity livingEntity = (LivingEntity) dependencies.get("${input$selectedEntity}");
  livingEntity.getAttribute(SharedMonsterAttributes.KNOCKBACK_RESISTANCE).setBaseValue(${input$inputValue});
};