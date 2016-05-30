// create an array of words with various lengths 
// use a function that counts character length for strings
// iterate through this array with character count method
// return the longest string 

var funWords = ["owl", "pleasant", "criticaster", "futz"];

// create variables for general length and longest length for comparison 
var lngth = 0;
var longestWord; 

// create a loop that will iterate through the array and return the longest word

for(var i=0; i < funWords.length; i++){
	if(funWords.index.length > lngth){
		var lngth = funWords.index.length;
		longestWord = funWords.index;
	}
}
console.log(longestWord);