if (${input$entity} instanceof EntityPlayerMP) {
	EntityPlayerMP _player = (EntityPlayerMP) ${input$entity};
	_player.displayGui(new BlockWorkbench.InterfaceCraftingTable(_player.world, new BlockPos(0, 0, 0)));
}