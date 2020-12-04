if (${input$entity} instanceof IAnimatedEntity) {
			new Object() {
				@OnlyIn(Dist.CLIENT)
				void playAnimation(Entity entity, String animationID) {
					IAnimatedEntity aniEntity = (IAnimatedEntity) entity;
					aniEntity.getAnimationManager().get("controller").setAnimation(new AnimationBuilder().addAnimation(animationID, ${input$loop} ));
				}
			}.playAnimation(${input$entity}, ${input$animation});
			
		}