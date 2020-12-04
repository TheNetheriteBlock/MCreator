((new Object() {
	public boolean hasRecipe(Entity entityIn, ResourceLocation recipeIn) {
		if (entityIn instanceof EntityPlayerMP) 
			return ((EntityPlayerMP)entityIn).getRecipeBook().isUnlocked(CraftingManager.getRecipe(recipeIn));
		return false;
	}
}).hasRecipe(${input$entity}, new ResourceLocation(${input$recipe})))