if (${input$selectedEntity} instanceof LivingEntity) {
  LivingEntity livingEntity = (LivingEntity) dependencies.get("${input$selectedEntity}");
  livingEntity.getAttribute(SharedMonsterAttributes.ATTACK_SPEED).setBaseValue(${input$inputValue});
};