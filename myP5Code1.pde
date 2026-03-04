setup = function() {
    size(700, 500);
};

//Background Images
var forestImage = loadImage("https://t3.ftcdn.net/jpg/02/50/39/72/360_F_250397206_HuBj2V5oEytcqonzpzum4IjEjtAsZq3g.jpg");

var spaceImage = loadImage("https://celcliptipsprod.s3-ap-northeast-1.amazonaws.com/tips_article_body/669e/450611/fba92df004c8f67cb4f0d3fba5aca9a1");

//Variable Declarations
var sceneImage = forestImage;
var sceneText = "                      Find him.       (the bug)        [Press f to look for him in space]";

draw = function(){
    
   drawScene();


   if(keyPressed){
     if(key == 'f'){
       sceneImage = spaceImage;   
       sceneText = "See who's behind each space item. Hover over with mouse. [Press s to restart]";
       
     } 
     if(key == 's'){
      sceneImage = forestImage;
      sceneText = "                   Find him.       (the bug)        [Press f to look for him in space]";
    } 
  }
  

if(sceneImage == spaceImage){
  if(mouseY < 140 && mouseY > 30 && mouseX < 345 && mouseX > 270){
    drawAlien(270, 115)
  }
 
  
  if(mouseY < 130 && mouseY > 30 && mouseX < 580 && mouseX > 500){
    drawAlien(515, 115)
  }

  if(mouseY < 240 && mouseY > 150 && mouseX < 180 && mouseX > 90){
    drawAlien(120, 218)
  }

 if(mouseY < 320 && mouseY > 250 && mouseX < 410 && mouseX > 350){
   drawAlien(330, 305)
  }

 if(mouseY < 300 && mouseY > 200 && mouseX < 550 && mouseX > 450){
   drawBug(480, 290)
  }

 if(mouseY < 400 && mouseY > 300 && mouseX < 200 && mouseX > 100){
   drawAlien(128, 395)
  }

   else{
   drawAlien(-10, -10)}

   if(mousePressed && mouseY < 300 && mouseY > 200 && mouseX < 550 && mouseX > 450){
   drawYay(random, random(700, 500))
   }
}
  if(sceneImage == forestImage){
    
    drawBug(310, 250)}

};
var drawSpace = function(){ 
textSize(90)
text("🚀", 90, 235);
text("🌌", 240, 125);
text("🌌", 450, 300);
text("🛰", 320, 319);
text("⭐", 490, 120);
text("⭐", 100, 400)};

var drawAlien = function(alienX, alienY){
  textSize(50);
  text("👽", alienX, alienY);
};

var drawBug = function(bugX, bugY){
  textSize(50);
  text("🐛", bugX, bugY)
};

var drawYay = function(yayX, yayY){
  textSize(60);
  text("YAY 🎇", yayX, yayY)
}


var drawScene = function(){
    image(sceneImage, 0, 0, 700, 500);
    if(sceneImage== spaceImage){drawSpace()};
    if(sceneImage == spaceImage){drawAlien()};
    if(sceneImage == forestImage){drawAlien(-10, -10)}
    fill(0,0,0);
    rect(0, 450, 700, 50);
      
    fill(255,255,255);
    textSize(18);
   
    text(sceneText, 10, 480);
};



