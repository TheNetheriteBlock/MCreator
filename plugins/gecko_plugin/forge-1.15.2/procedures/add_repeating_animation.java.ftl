if (${input$entity} instanceof IAnimatedEntity) {
			new Object() {
				@OnlyIn(Dist.CLIENT)
				void playAnimation(Entity entity, String animationID) {
					IAnimatedEntity aniEntity = (IAnimatedEntity) entity;
					aniEntity.getAnimationManager().get("controller").setAnimation(new AnimationBuilder().addRepeatingAnimation(animationID, ${input$repeats} ));
				}
			}.playAnimation(${input$entity}, ${input$animation});
			
		}