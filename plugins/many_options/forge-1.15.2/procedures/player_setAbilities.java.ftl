if(${input$entity} instanceof PlayerEntity) {
    ((PlayerEntity)${input$entity}).abilities.${field$ability}((float) ${input$condition});
    ((PlayerEntity)${input$entity}).sendPlayerAbilities();
}
