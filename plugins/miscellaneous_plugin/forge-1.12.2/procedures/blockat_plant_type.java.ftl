<#include "mcitems.ftl">
((new Object() {
	public boolean checkPlantType(World worldIn, BlockPos pos) {
		IBlockState _state = worldIn.getBlockState(pos);
		if (_state.getBlock() instanceof IPlantable) {
			return ((IPlantable)_state.getBlock()).getPlantType(worldIn, pos) == EnumPlantType.${field$plant_type};
		}
		return false;
	}
}).checkPlantType(world, new BlockPos((int)${input$x}, (int)${input$y}, (int)${input$z}))
)