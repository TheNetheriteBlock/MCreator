((new Object() {
	public boolean hasRecipe(Entity entityIn, ResourceLocation recipeIn) {
		if (entityIn instanceof ServerPlayerEntity) 
			return ((ServerPlayerEntity)entityIn).getRecipeBook().func_226144_b_(recipeIn);
		return false;
	}
}).hasRecipe(${input$entity}, new ResourceLocation(${input$recipe})))