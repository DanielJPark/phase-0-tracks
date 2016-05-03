var colors = ["red", "blue", "green", "yellow"]
var names = ["Larry", "Guy", "Howard", "Paul"]

colors.push("purple")
console.log(colors)
names.push("Peter")
console.log(names)

function horseColor (names,colors) {
	return names.reduce (
		function name_to_color(name,color,i){name[color] = colors[i]; return name;},
		{}
	);
	//name_to_color
}

console.log(horseColor(names, colors))

function Car(make, model, year){
	this.make = make;
	this.model = model;
	this.year = year;

	this.drive = function() {console.log("zooom!!!");};
	this.stop = function() {console.log("skreech!!!");};
	this.crash = function() {console.log("smassshhhhh!!");};
	console.log("Car has been completed!");
}
	

var car1 = new Car("BMW", "Z4", 2009)
console.log(car1)
car1.drive()
car1.stop()
car1.crash()





