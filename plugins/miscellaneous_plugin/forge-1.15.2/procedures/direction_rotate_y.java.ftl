(new Object() {
	public Direction rotate(Direction dir) {
		try {
			return dir.rotateY();
		}
		catch (Exception e) {
			return dir;
		}
	}
}.rotate(${input$direction}))