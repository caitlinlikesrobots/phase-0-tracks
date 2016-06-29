console.log("The script is running!");

// use ready event to run code as soon as it is ready to be manipulated
$(document).ready(function(){
    $("button").animate({
      left: '50px',
      height: '+=50px',
      width: '+=50px'
    });
});

// fade out the chameleon 
$(document).ready(function(){
    $("img").fadeOut("slow", function(){
      });
});

// fade in the chameleon

$(document).ready(function(){
    $("img").fadeIn("slow", function(){
      });
});

// change the color of the p text
$(document).ready(function(){
    $("p").css('color', 'green');
      });

// change the color of the ul text
$(document).ready(function(){
    $("ul").css('color', 'cyan');
});
