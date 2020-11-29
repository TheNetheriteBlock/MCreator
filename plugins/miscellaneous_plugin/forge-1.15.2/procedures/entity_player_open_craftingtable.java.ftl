if (${input$entity} instanceof ServerPlayerEntity) {
	ServerPlayerEntity _player_ec = (ServerPlayerEntity) ${input$entity};
	NetworkHooks.openGui(_player_ec, new SimpleNamedContainerProvider((id, playerInventory, player) -> {
		return new WorkbenchContainer(id, playerInventory);
	}, new TranslationTextComponent("container.crafting")));
}