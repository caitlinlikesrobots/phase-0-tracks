console.log("The script is running!"); 


// function addBlueBackground() {
//   var docBackground = document.getElementsByTagName("p");
//   var docBackground = document.body.style.backgroundColor = "blue";
// }

// addBlueBackground();

// create functioning side bar with js
function openNav() {
    document.getElementById("mySidenav").style.width = "250px";
    document.getElementById("main").style.marginLeft = "250px";
    document.body.style.backgroundColor = "#5900b3";
}

function closeNav() {
    document.getElementById("mySidenav").style.width = "0";
    document.getElementById("main").style.marginLeft= "0";
    document.body.style.backgroundColor = "#99ff99";
}

function addPurple(event) {
  console.log("mouse over happened!");
  event.target.style.backgroundColor = "purple"

}

var button = document.getElementsByTagName("button");
button[0].addEventListener("mouseover", addPurple);