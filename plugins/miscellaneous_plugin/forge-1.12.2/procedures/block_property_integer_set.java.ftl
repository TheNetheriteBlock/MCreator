try {
	IBlockState _state = world.getBlockState(new BlockPos((int) ${input$x}, (int) ${input$y}, (int) ${input$z}));
	for (IProperty<?> property : _state.getProperties().keySet()) {
		if (property.getName().equals(${input$property})) {
			world.setBlockState(new BlockPos((int) ${input$x}, (int) ${input$y}, (int) ${input$z}), _state.withProperty((PropertyInteger) property, ${input$amount}), 3);
			break;
		}
	}
}
catch (Exception e) {
}