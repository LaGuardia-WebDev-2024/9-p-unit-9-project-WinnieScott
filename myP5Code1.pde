setup = function() {
    size(700, 500);
};

//Background Images
var caveSceneImage = loadImage("https://t3.ftcdn.net/jpg/02/50/39/72/360_F_250397206_HuBj2V5oEytcqonzpzum4IjEjtAsZq3g.jpg");

var forestImage = loadImage("https://static.vecteezy.com/system/resources/thumbnails/058/369/419/small/peaceful-forest-landscape-with-trees-and-plants-offering-a-calm-serene-setting-cartoon-illustration-vector.jpg");

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
  
};

var drawScene = function(){
    image(sceneImage, 0, 0, 700, 500);
    
    fill(0,0,0);
    rect(0, 450, 700, 50);
      
    fill(255,255,255);
    textSize(20);
   
    text(sceneText, 80, 480);
};



