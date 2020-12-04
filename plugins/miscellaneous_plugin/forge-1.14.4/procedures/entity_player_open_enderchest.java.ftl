if (${input$entity} instanceof ServerPlayerEntity) {
	ServerPlayerEntity _player_ec = (ServerPlayerEntity) ${input$entity};
	NetworkHooks.openGui(_player_ec, new SimpleNamedContainerProvider((id, playerInventory, player) -> {
		return ChestContainer.createGeneric9X3(id, playerInventory, _player_ec.getInventoryEnderChest());
	}, new TranslationTextComponent("container.enderchest")));
}