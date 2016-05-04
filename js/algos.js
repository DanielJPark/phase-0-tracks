// pseudocode
// create function named longestString that takes an array as a parameter.
// take the first item in the array and count the string length making that the longest string.
// go to the next item in the array and count the string length. if it is longer than the previous string set that as the new longest string.
// repeat until finished all items in the array.
// return longest string.

function longestString(array){
	var longest = ""
	for (var i = 0; i < array.length; i++){
		if (longest.length < array[i].length){
			longest = array[i]
		}
	}
console.log(longest)
}

longestString(["a", "ab", "abc", "bc", "b"])