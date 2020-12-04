(new Object() {
	public int getValue(BlockPos pos) {
		try {
			BlockState _state = world.getBlockState(pos);
			IntegerProperty property = (IntegerProperty) _state.getBlock().getStateContainer().getProperty(${input$property});
			return _state.get(property);
		}
		catch (Exception e) {
			return -1;
		}
	}
}.getValue(new BlockPos((int) ${input$x}, (int) ${input$y}, (int) ${input$z})))