if (${input$entity} instanceof IAnimatedEntity) {
			new Object() {
				@OnlyIn(Dist.CLIENT)
				void getSpeed(Entity entity) {
					IAnimatedEntity aniEntity = (IAnimatedEntity) entity;
					aniEntity.getAnimationManager().getCurrentAnimationSpeed() );
				}
			}.getSpeed(${input$entity});
			
		}