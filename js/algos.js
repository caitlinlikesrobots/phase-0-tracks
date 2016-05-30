//----------------------- Longest String in An Array Function-----------------------//
// create an array of words with various lengths 
// use a FUNCTION that counts character length for EACH string
// ITERATE through this array with character count method
// IF string is longer than the string before it, put it in a new array of longWords
// make multiple longest strings FALSE
// return the longest string 

function LongestWord(funWords) {
	var longestString = 0;
	var longWord = 0;
	var longestWord = [];
	var manyLongWords = false;
	var i = 0
	var l = 0
	

	for(i = 0; i < funWords.length; i++){
	// conditional statement that moves through the index [i] lengths
	// through the use of the index, move through array
	// with comparative statement, longestString variable becomes the length of 
	// the strings in array
	// longest word becomes the string at the index [i] that represents the longest
	// string of characters based on the .length method
			if (funWords[i].length > longestString){
			longestString = funWords[i].length;
			longWord = i;
			manyLongWords = false;
	}
	// account for words with the same longest length
			else if (funWords[i].length == longestString){
				manyLongWords = true;
				longWord = i;
			}
	}
  	// IF more than one word is the longest, they are pushed into the array at index [l]
  	if (manyLongWords){
  		for (l = 0; l < funWords.length; l++){
  			if (funWords[l].length == longestString) {
  				longestWord.push(funWords[l]);
  			}
  		}
  	return longestWord;
  	}
  	else{
  		return funWords[longWord];
  	}
  }

//-------------------------DRIVER CODE-------------------------//
console.log(LongestWord(["fruit","basketball","highest","penultimate","mark"]));
console.log(LongestWord(["egg","fun"]));

//-----------------------Code Graveyard For Learning-----------------------//
// function LongestWord(funWords){
// I thought this might print the array
// console.log(this); 
// this.array = funWords;
// console.log(funWords[1]);
// }

// create a loop that will iterate through the array and return the longest word

// for(var i=0; i < funWords.length; i++){
// 	if(funWords.index.length > lngth){
// 		var lngth = funWords.index.length;
// 		longestWord = funWords.index;
// 	}
// }

//.index doesn't seem to be an option...
// create variable for general length and function for longest length for comparison 
// function longestWord(funWords) {
// // sets up a loop that moves through the length of the array
// // var lngth = 0;
// findLongWord: function() {
// 	for(var i = 0; i < funWords.length; i++){
// 	// conditional statement that moves through the index [i] lengths
// 	// through the use of the index, move through array
// 	// with comparative statement, lngth variable becomes the length of 
// 	// the strings in array
// 	// longest word becomes the string at the index that represents the longest
// 	// string of characters based on the .length method
// 	if(funWords[i].length > 0){
// 		lngth = funWords[i].length;
// 		longestWord = funWords[i];
// 	}
//   }
// }
// };
// console.log(longestWord); 
// OH MAN IT WORKED but now I have to make it a FUNCTION...
// longestWord.findLongWord(); //this did not work

//-----------------------Key Value Match Function-----------------------//

// create a FUNCTION that takes two objects and checks see if they share a key-value pair
// this will need at least two objects as arguments
// will need to iterate through object 1 in search of EACH key-value match in object 2
// IF key-value pair has a match, the function will RETURN true, else it will RETURN false

function MatchingKeyValue (object1, object2){
// 	var object1 = {
// 	"car":"race", 
// 	"basketball":"game",
// };

// 	var object2 = {
// 	"car":"race",
// 	"baseball":"game",
// }
// i is the key and l is the value 
// This does not seem to work--> break it down to just keys i and l for each object
// 	for (var |i,l| in object1){
// 		for (var |i,l| in object2){
// 			if ((i,l) == (i,l)){
// 				if object1[i,l] == object2[i,l]{
// 					return true
// 				}
// 			}
// 		}
// 	}
// }	return false
    for (var i in object1) {
        for (var l in object2) {
        //checks keys
            if (i == l) {
          //checks values of keys
                if (object1[i] == object2[l]) {
                    return true;
                }
            }
        }
    }
    return false;
}

//-------------------------DRIVER CODE-------------------------//
var object1 = {
    "car": "race",
    "basketball": "game",
};

var object2 = {
    "car": "race",
    "baseball": "game",
};

var object3 ={
	"caitlin": 30
}
console.log(MatchingKeyValue(object1, object2));
console.log(MatchingKeyValue(object2, object3));