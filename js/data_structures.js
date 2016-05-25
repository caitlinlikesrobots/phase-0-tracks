
var colors = ["pink", "rainbow", "bronze", "sky blue"];
var names = ["Charles", "Daisy", "JZebra", "Horace"];
colors.push("aquamarine");
names.push("MrChompers");
var horses ={};
for (var i = 0; i < colors.length; i++) {
  horses[names[i]] = colors[i];
}
console.log(horses);
for (var key in horses){
  if (horses.hasOwnProperty(key)){
    console.log(key + ": " + horses[key]);
  }
}

console.log("____________");


function Car(name, year, isCool) {
  this.name = name;
  this.year = year;
  this.isCool = isCool;
  
  this.comment = function(){
    if (isCool){
      console.log("yeah bruh, this ride dank yo");
    }
    else{
      console.log("laaaaaame");
    }
  };
}

var sortOfOldCar = new Car("Mclaren F1", 1994, true);
console.log(sortOfOldCar.name + ": " + sortOfOldCar.year);
sortOfOldCar.comment();