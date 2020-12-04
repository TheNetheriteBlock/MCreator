@SubscribeEvent public void onTeleport(EnderTeleportEvent event){
	if(event != null && event.getEntity() != null) {
		Entity entity = event.getEntity();
		int i = (int) entity.getPosX();
		int j = (int) entity.getPosY();
		int k = (int) entity.getPosZ();
		double xt = event.getTargetX();
		double yt = event.getTargetY();
		double zt = event.getTargetZ();
		double damage = event.getAttackDamage();
		World world = entity.world;
		java.util.HashMap<String, Object> dependencies = new java.util.HashMap<>();
		dependencies.put("x", i);
		dependencies.put("y", j);
		dependencies.put("z", k);
		dependencies.put("xt", xt);
		dependencies.put("yt", yt);
		dependencies.put("zt", zt);
    dependencies.put("damage", damage);
		dependencies.put("world", world);
		dependencies.put("entity", entity);
		dependencies.put("event", event);
		this.executeProcedure(dependencies);
	}
}
