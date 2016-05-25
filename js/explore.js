/* Reverse Function in Javascript
declare a variable for the string to be reversed (var reverseString = "hello")
function (after research) reverseString --> converts string to array, reverses it
and rejoins it into a string in order to return the reversed string
*/

// set up function with string as expected parameter 
function reverseString(str) {
// implicitly return the array, reverse it, and rejoin it back into a string
    return str.split("").reverse().join("");
}
// expected value will be "olleh"
console.log (reverseString("hello"))
console.log (reverseString("This is fun!"))
