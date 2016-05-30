// create an array of words with various lengths 
// use a function that counts character length for strings
// iterate through this array with character count method
// return the longest string 

var funWords = ["owl", "pleasant", "criticaster", "futz"];


// function LongestWord(funWords){
// I thought this might print the array
// console.log(this); 
// this.array = funWords;
// console.log(funWords[1]);
}

// create a loop that will iterate through the array and return the longest word

// for(var i=0; i < funWords.length; i++){
// 	if(funWords.index.length > lngth){
// 		var lngth = funWords.index.length;
// 		longestWord = funWords.index;
// 	}
// }

//.index doesn't seem to be an option...
// create variable for general length and function for longest length for comparison 
function longestWord(funWords) {
// sets up a loop that moves through the length of the array
// var lngth = 0;
findLongWord: function() {
	for(var i = 0; i < funWords.length; i++){
	// conditional statement that moves through the index [i] lengths
	// through the use of the index, move through array
	// with comparative statement, lngth variable becomes the length of 
	// the strings in array
	// longest word becomes the string at the index that represents the longest
	// string of characters based on the .length method
	if(funWords[i].length > 0){
		lngth = funWords[i].length;
		longestWord = funWords[i];
	}
  }
}
};
// console.log(longestWord); 
// OH MAN IT WORKED now I have to make it a function...
longestWord.findLongWord();
