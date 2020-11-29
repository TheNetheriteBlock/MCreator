if (${input$selectedEntity} instanceof LivingEntity) {
  LivingEntity livingEntity = (LivingEntity) dependencies.get("${input$selectedEntity}");
  livingEntity.getAttribute(SharedMonsterAttributes.ATTACK_DAMAGE).setBaseValue(${input$inputValue});
};