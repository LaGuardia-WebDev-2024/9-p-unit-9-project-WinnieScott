setup = function() {
    size(700, 500);
};

//Background Images
var caveSceneImage = loadImage("https://t3.ftcdn.net/jpg/02/50/39/72/360_F_250397206_HuBj2V5oEytcqonzpzum4IjEjtAsZq3g.jpg");

var forestImage = loadImage("https://celcliptipsprod.s3-ap-northeast-1.amazonaws.com/tips_article_body/669e/450611/fba92df004c8f67cb4f0d3fba5aca9a1");

//Variable Declarations
var sceneImage = caveSceneImage;
var sceneText = "Where do you want to go?  [Press f for forest and c for cave]";

draw = function(){
    
   drawScene();


   if(keyPressed){
     if(key == 'f'){
       sceneImage = forestImage;   
       sceneText = "No fox here.  [Press s to restart]";
       
     } 
     if(key == 's'){
      sceneImage = caveSceneImage;
      sceneText = "Where do you want to go?  [Press f for forest and c for cave]";
    } 
   }
}
var drawSpace = function(){ 
textSize(90)
text("🚀", 90, 235);
text("🌌", 240, 125);
text("🌌", 450, 300);
text("🛰", 320, 319);
text("⭐", 490, 120);
text("⭐", 100, 400)};


var drawScene = function(){
    image(sceneImage, 0, 0, 700, 500);
    if(sceneImage== forestImage){drawSpace()};
    fill(0,0,0);
    rect(0, 450, 700, 50);
      
    fill(255,255,255);
    textSize(20);
   
    text(sceneText, 80, 480);
};



