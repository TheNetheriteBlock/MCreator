if (${input$entity} instanceof EntityPlayerMP) {
	EntityPlayerMP _player = (EntityPlayerMP) ${input$entity};
	_player.displayGUIChest(_player.getInventoryEnderChest());
}