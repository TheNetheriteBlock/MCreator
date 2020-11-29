(new Object() {
	public boolean getValue(BlockPos pos) {
		try {
			BlockState _state = world.getBlockState(pos);
			BooleanProperty property = (BooleanProperty) _state.getBlock().getStateContainer().getProperty(${input$property});
			return _state.get(property);
		}
		catch (Exception e) {
			return false;
		}
	}
}.getValue(new BlockPos((int) ${input$x}, (int) ${input$y}, (int) ${input$z})))