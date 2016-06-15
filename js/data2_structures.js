var horseName = ["Amanda", "Anabel", "Nibisco", "Nickles and Dimes"];

var colors = ["teal", "burnt sienna", "aquamarine blue", "yellow"];


colors.push("red");
horseName.push("Nibby");

/*
console.log(colors);
console.log(horseName);


function pairs(horseName, colors) {
  horseName : colors;
}
//var horseColors = {};


for (var i = 0; i < colors.length; i++) {
  horseColors[horseName[i]] = (colors[i]);
}
console.log(horseColors);
for (var key in horseColors){
  if (horseColors.hasOwnProperty(key)){
    console.log(key + ": " + horseColors[key]);
  }
    
}
*/


horseName.forEach(function(n) { console.log(n); })

for (var i = 0; i < horseName.length; i++) {
  console.log(horseName[i] + ":" + colors[i]);
}


function Car(model, color, year){
  
  console.log("Our new car:", this);
  
  this.model = model;
  this.color = color;
  this.year = year;
  
  

  
  // this.drivesFast = function() { console.log("Vroooooom!"); };
  
  console.log("CAR INITIALIZATION COMPLETE");
}

console.log("Let's buy a car ...");
var newCar = new Car("Tesla", "red", 2015);
console.log(newCar);
console.log("Our car goes fast!");
  newCar.drivesFast = function() { console.log("Vroooom!")};
newCar.drivesFast();