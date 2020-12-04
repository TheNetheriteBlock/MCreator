{
	BlockPos bonemeal_pos = new BlockPos((int) ${input$x}, (int) ${input$y}, (int) ${input$z});
	BlockState bonemeal_state = world.getBlockState(bonemeal_pos);
	if (bonemeal_state.getBlock() instanceof IGrowable) {
		IGrowable _igrowable = (IGrowable) bonemeal_state.getBlock();
		if (_igrowable.canGrow(world, bonemeal_pos, bonemeal_state, world.isRemote)) {
			if (!world.isRemote) {
				if (_igrowable.canUseBonemeal(world, world.rand, bonemeal_pos, bonemeal_state))
					_igrowable.grow(world, world.rand, bonemeal_pos, bonemeal_state);
			}
		}
	}
}