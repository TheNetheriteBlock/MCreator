if (${input$entity} instanceof IAnimatedEntity) {
			new Object() {
				@OnlyIn(Dist.CLIENT)
				void setSpeed(Entity entity, double speed) {
					IAnimatedEntity aniEntity = (IAnimatedEntity) entity;
					aniEntity.getAnimationManager().setAnimationSpeed(speed) );
				}
			}.setSpeed(${input$entity}, (double) ${input$speed});
			
		}