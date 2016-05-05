// pseudocode
// create function named longestString that takes an array as an argument.
// create a variable longest and set it equal to an empty string.
// take the first item in the array and count the string length. If it is greater in length to longest, reset longest to that string.
// go to the next item in the array and count the string length. If it is longer than the previous string set that as the new longest.
// repeat until finished all items in the array.
// return longest string.

function longestString(array){
	var longest = ""
	for (var i = 0; i < array.length; i++){
		if (longest.length < array[i].length){
			longest = array[i]
		}
	}
	//console.log(longest)
	return longest
}




//pseudocode
// create function named compareKV that takes 2 objects as arguments
// create variables that are equal to array that contain the keys of both objects.
// create a variable trueFalse and set it to false
// create a loop that compares the objects of the arrays.
// if the elemenets of the arrays match, which are also keys in the objects compare the associated values in the objects.
// if the associated values match set the variable trueFalse to "True"
// print the variable trueFalse.



function compareKV(object1, object2) {
	var object1key = Object.keys(object1);
	var object2key = Object.keys(object2);
	var trueFalse = "False"
	for (i = 0; i < object1key.length; i++) {
		if (object1key[i] == object2key[i]){
			object1value = object1[object1key[i]];
			object2value = object2[object2key[i]];
			if (object1value == object2value){
				var trueFalse = "True";
			}
		}
	}
	//console.log(trueFalse);
	return(trueFalse)
}

var bob = {"name": "Bob", "age": 45, "occupation": "Web Developer"}
var john = {"name": "John", "age": 45, "occupation": "Artist"}
var peter = {"name": "Peter", "age": 42, "occupation": "Artist"}


// compareKV(bob,john)
// compareKV(bob,peter)
// compareKV(peter,john)

// pseudocode
// create a function randomString that takes a number as an arguement
// create an empty array named arrayOfStrings
// create an array of numbers 1 - 10
// create an array of all letters in the alphabet caps and lower cases
// create a while loop with number set as the counter
// while number is greater than 0 counting down by 1
// 	set and empty string
// 	take a random number from the numbers array.
// 		create another while loop within the first while loop that sets the random number to the counter counting down by 1
// 		create a randomLetter by randomly selecting it from the letters array
// 		add to empty string until end of the loop.
// 	push the recently created string into the array arrayOfStrings
// print arrayOfStrings.


function randomString(number){
	var arrayOfStrings = [];
	var numbers = [1,2,3,4,5,6,7,8,9,10];
	var letters = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz".split("");
		while (number>0){
			var string = "";
			var lettersInString = numbers[Math.floor(Math.random()*numbers.length)];
				while(lettersInString > 0){
					var randomLetter = letters[Math.floor(Math.random()*letters.length)];
					string+= randomLetter;
					--lettersInString
				}
			arrayOfStrings.push(string);
			--number;
		} 
		//console.log(arrayOfStrings)
		return arrayOfStrings
}
// var array1 = ["a", "ab", "abc", "bc", "b"]
// longestString(array1)
// console.log(longestString(["Hello", "everybody", "how", "are", "you", "all", "doing", "today?"]))


// randomString(3)
// // var letters = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz".split("");
// // var randomLetter = letters[Math.floor(Math.random()*letters.length)];
// // console.log(randomLetter)

// randomString(10)
// randomString(2)
// randomString(5)
// var crazyString = randomString(10)
// console.log(crazyString)
// console.log(longestString(crazyString))

for (i=0; i<10; i++) {
	var numOfStrings = Math.floor(Math.random() * 10) + 1  
	var array = randomString(numOfStrings)	
	console.log(array)
	console.log(longestString(array))
}
 