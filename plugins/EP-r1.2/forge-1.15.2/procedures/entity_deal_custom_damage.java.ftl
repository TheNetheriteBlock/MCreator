if (${input$entity} instanceof LivingEntity) {
    DamageSource a = new DamageSource(${input$localization_text}).setDamageBypassesArmor();
    ((LivingEntity) ${input$entity}).attackEntityFrom(a, ${input$damage_number});
}