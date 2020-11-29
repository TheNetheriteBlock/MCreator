((new Object(){
	public double getValue(Entity entityIn, IAttribute attributeIn) {
		if (entityIn instanceof LivingEntity) {
			try {
				return ((LivingEntity)entityIn).getAttribute(attributeIn).getValue();
			} catch(Exception e) {
				return -1;
			}
		}
		return -1;
	}
}).getValue(${input$entity}, SharedMonsterAttributes.${field$attribute}))