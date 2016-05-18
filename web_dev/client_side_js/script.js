console.log("The script is running");

function addBlueBorder(event) {
	console.log("click happened! here's the click event:");
	console.log(event);
	event.target.style.border = "20px solid blue";
}

// function addText(event){
// 	console.log("click happend! here is the new click event:")
// 	console.log(event);
// 	event.target.
// }
function styleText(font) {
	var text = document.getElementById("text");
	font.target.style.fontWeight = "900"
}

var photo = document.getElementById("photo");
photo.addEventListener("click", addBlueBorder);

var text = document.getElementById("text");
text.addEventListener("click", styleText);


var new_paragraph = document.createElement('p');
var text_paragraph = document.createTextNode('This Paragraph is created by Javascript.');
new_paragraph.appendChild(text_paragraph);

var element = document.getElementById('paragraphs');
element.appendChild(new_paragraph);