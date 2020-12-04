(new Object() {
	public boolean hasRecipe(Entity entityIn, ResourceLocation recipeIn) {
		if (entityIn instanceof ServerPlayerEntity) {
			try {
				return ((ServerPlayerEntity) entityIn).getRecipeBook().isUnlocked(((ServerPlayerEntity) entityIn).getServerWorld().getRecipeManager().getRecipe(recipeIn).get());
			} catch (Exception e) {
				return false;
			}
		}
		return false;
	}
}).hasRecipe(${input$entity}, new ResourceLocation(${input$recipe}))
