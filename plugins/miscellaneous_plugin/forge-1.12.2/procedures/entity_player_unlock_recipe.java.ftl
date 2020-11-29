if (${input$entity} instanceof EntityPlayerMP) {
	((EntityPlayerMP) ${input$entity}).unlockRecipes(new ResourceLocation[]{new ResourceLocation(${input$recipe})});
}