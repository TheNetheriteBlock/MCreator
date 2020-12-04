@SubscribeEvent public void onLivingDropXp(LivingExperienceDropEvent event){
	if(event != null && event.getEntity() != null) {
		Entity entity = event.getEntity();
		int i = (int) entity.getPosX();
		int j = (int) entity.getPosY();
		int k = (int) entity.getPosZ();
		PlayerEntity attacked = event.getAttackingPlayer();
		int droppedxp = (int) event.getDroppedExperience();
		int originalxp = (int) event.getDroppedExperience();
		World world = entity.world;
		java.util.HashMap<String, Object> dependencies = new java.util.HashMap<>();
		dependencies.put("x", i);
		dependencies.put("y", j);
		dependencies.put("z", k);
		dependencies.put("droppedexp", droppedxp);
		dependencies.put("originalexp", originalxp);
		dependencies.put("sourceentity", attacked)
		dependencies.put("world", world);
		dependencies.put("entity", entity);
		dependencies.put("event", event);
		this.executeProcedure(dependencies);
	}
}
