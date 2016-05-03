// take a string as a variable
// set i to string.length
// set a varaible reversed_string to and empty string
// create a loop starting from the last character in the array and add each charcter to an empty string.
// subtract down by 1


function reverse(string){
	var i = string.length;
	var reversed_string = "";

	while(i > 0){
		reversed_string += string[i-1];
		i --;
	}
	return reversed_string;
}

console.log(reverse("hello"))
console.log(reverse("racecar"))
console.log(reverse("Happy"))
console.log(reverse("Cheetah"))

function string_or_not(word){
	if (word != 0) {
		console.log(reverse(word))
	}
	else{
		console.log("Not a string! Try again!")
	}
}

string_or_not("this is a string")
string_or_not(0)