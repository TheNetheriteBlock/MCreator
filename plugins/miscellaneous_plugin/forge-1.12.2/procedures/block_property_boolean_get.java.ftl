(new Object() {
	public boolean getValue(BlockPos pos) {
		try {
			IBlockState _state = world.getBlockState(new BlockPos((int) ${input$x}, (int) ${input$y}, (int) ${input$z}));
			for (IProperty<?> property : _state.getProperties().keySet()) {
				if (property.getName().equals(${input$property}))
					return _state.getValue((PropertyBool) property);
			}
			return false;
		}
		catch (Exception e) {
			return false;
		}
	}
}.getValue(new BlockPos((int) ${input$x}, (int) ${input$y}, (int) ${input$z})))