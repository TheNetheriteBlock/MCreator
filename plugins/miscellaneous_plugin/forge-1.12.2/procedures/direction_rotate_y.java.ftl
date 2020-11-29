(new Object() {
	public EnumFacing rotate(EnumFacing dir) {
		try {
			return dir.rotateY();
		}
		catch (Exception e) {
			return dir;
		}
	}
}.rotate(${input$direction}))