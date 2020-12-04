(new Object(){
public String f(){
String res = "";
for (java.util.Map.Entry<String, String> pair: __HashMap_${field$hashmapName}.entrySet()) res = res + pair.getKey().replace("%", "%%").replace("|", "%-") + "|" + pair.getValue().replace("%", "%%").replace("|", "%-") + "|";
if (res.length() > 0) res = res.substring(0, res.length() - 1);
return res;
}
}.f())