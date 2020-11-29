@SubscribeEvent public void onPickupXP(PlayerPickupXpEvent event){
	PlayerEntity entity = event.getEntity();
	int i = (int) entity.getPosX();
	int j = (int) entity.getPosY();
	int k = (int) entity.getPosZ();
	World world = entity.world;
	java.util.HashMap<String, Object> dependencies = new java.util.HashMap<>();
	dependencies.put("x", i);
	dependencies.put("y", j);
	dependencies.put("z", k);
	dependencies.put("world", world);
	dependencies.put("entity", entity);
	dependencies.put("event", event);
	this.executeProcedure(dependencies);
}
