(new Object() {
	public EnumFacing rotate(EnumFacing dir) {
		try {
			return dir.rotateYCCW();
		}
		catch (Exception e) {
			return dir;
		}
	}
}.rotate(${input$direction}))