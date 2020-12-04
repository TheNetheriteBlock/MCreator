try {
	BlockState _state = world.getBlockState(new BlockPos((int) ${input$x}, (int) ${input$y}, (int) ${input$z}));
	world.setBlockState(new BlockPos((int) ${input$x}, (int) ${input$y}, (int) ${input$z}), _state.with((IntegerProperty) _state.getBlock().getStateContainer().getProperty(${input$property}), ${input$amount}), 3);
}
catch (Exception e) {
}