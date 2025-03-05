setup = function() {
    size(600, 400);
};

//Background Images
var caveSceneImage = loadImage("https://t4.ftcdn.net/jpg/05/05/72/43/360_F_505724304_Ezh1XyejL3iN7op0zqH2vprzSGFBGEuy.jpg");

var villageImage = loadImage("https://i.etsystatic.com/20846065/r/il/d65003/5123548541/il_570xN.5123548541_hafu.jpg");


var treeImage = 
loadImage("https://static.wikia.nocookie.net/dfairies/images/7/75/The_Original_Pixie_Dust_Tree.jpg");

var libraryImage = loadImage("https://cdna.artstation.com/p/assets/images/images/019/490/140/large/antonia-cioppa-junk-the-hollow-library.jpg?1563740451")

var fairyImage = loadImage("https://st.depositphotos.com/1794911/1676/i/950/depositphotos_16761907-stock-photo-magical-background.jpg")


//Variable Declarations
var sceneImage = caveSceneImage;
var sceneText = "Where do you want to go?  [Press v for village, m for Magical Tree]";

draw = function(){
    
   drawScene();


   if(keyPressed){
     if(key == 'v'){
       sceneImage = villageImage;   
       sceneText = "Getting closer! How about the library?  [Press l for library]";
     } 
     if(key == 's'){
      sceneImage = caveSceneImage;
      sceneText = "Where do you want to go?  [Press v for village, m for Magical tree]";
    } 
    
    
     if(key == 'm'){
       sceneImage = treeImage;   
       sceneText = "No fairy here!  [Press s to restart]";
    }
    
     if(key == 'l'){
       sceneImage = libraryImage;   
       sceneText = "I think I see her!  [Press c to check]";
    }
    
    
      if(key == 'c'){
       sceneImage = fairyImage;   
       sceneText = "You did it!  [Click the screen for a surprise!]";
    }
    
    
    
   }
  
};

var drawScene = function(){
    image(sceneImage, 0, 0,600,400);
    
    fill(0,0,0);
    rect(0, 350, 600, 100);
      
    fill(255,255,255);
    textSize(20);
    
    if(mousePressed && sceneText == "I think I see her! [Press c to check]"){
    
    }
   
   
   
   if(sceneText== "You did it!  [Click the screen for a surprise!]"){
   
   drawFairy (330,200);
   
   if(mousePressed){ text ("🦄", random(0,600), random(0,400));
   
   
   }
   }
      textSize(20);

   text(sceneText, 10, 375);
   
  
   
};





var drawFairy = function(fairyX, fairyY, fairyColor){
  textSize(100);
  fill(fairyColor);
  text("🧚🏽", fairyX, fairyY);}
  

