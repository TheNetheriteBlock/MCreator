if (${input$entity} instanceof IAnimatedEntity) {
			new Object() {
				@OnlyIn(Dist.CLIENT)
				void getName(Entity entity) {
					IAnimatedEntity aniEntity = (IAnimatedEntity) entity;
					aniEntity.getAnimationManager().get("controller").getCurrentAnimation().animationName );
				}
			}.getName(${input$entity});
			
		}