(new Object() {
	public Direction rotate(Direction dir) {
		try {
			return dir.rotateYCCW();
		}
		catch (Exception e) {
			return dir;
		}
	}
}.rotate(${input$direction}))