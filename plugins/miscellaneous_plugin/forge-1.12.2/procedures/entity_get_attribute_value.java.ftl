((new Object(){
	public double getValue(Entity entityIn, IAttribute attributeIn) {
		if (entityIn instanceof EntityLivingBase) {
			try {
				return ((EntityLivingBase)entityIn).getEntityAttribute(attributeIn).getAttributeValue();
			} catch(Exception e) {
				return -1;
			}
		}
		return -1;
	}
}).getValue(${input$entity}, SharedMonsterAttributes.${field$attribute}))