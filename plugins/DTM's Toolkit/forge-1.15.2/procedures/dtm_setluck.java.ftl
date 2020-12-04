if (${input$selectedEntity} instanceof LivingEntity) {
  LivingEntity livingEntity = (LivingEntity) dependencies.get("${input$selectedEntity}");
  livingEntity.getAttribute(SharedMonsterAttributes.LUCK).setBaseValue(${input$inputValue});
};