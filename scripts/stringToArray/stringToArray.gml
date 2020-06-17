var str = argument0 + " ";
var arr = undefined;
var word = 0;



for(var char = 1; char < string_length(str); char ++){
	var s = "";
	
	while( string_char_at(str, char) != " " ){
		s += string_char_at(str, char);
		char ++;
	}
	
	arr[word] = s;
	word ++;
}

return arr;