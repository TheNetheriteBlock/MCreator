{
String[] split = ((String)${input$serializedValue}).split("\\|");
__HashMap_${field$hashmapName}.clear();
for (int i=0; i+2 <= split.length; i+=2) __HashMap_${field$hashmapName}.put(split[i].replace("%-", "%|").replaceAll("%(\\|)|%(%)", "$1$2"), split[i + 1].replace("%-", "%|").replaceAll("%(\\|)|%(%)", "$1$2"));
}