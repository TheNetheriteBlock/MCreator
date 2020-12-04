(new Object() {
	public int getValue(BlockPos pos) {
		try {
			IBlockState _state = world.getBlockState(new BlockPos((int) ${input$x}, (int) ${input$y}, (int) ${input$z}));
			for (IProperty<?> property : _state.getProperties().keySet()) {
				if (property.getName().equals(${input$property}))
					return _state.getValue((PropertyInteger) property);
			}
			return -1;
		}
		catch (Exception e) {
			return -1;
		}
	}
}.getValue(new BlockPos((int) ${input$x}, (int) ${input$y}, (int) ${input$z})))