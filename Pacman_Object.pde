/*************************************************************************
* Projet: (Pacman)
* Fonction: Création du personnage de Pacman
*************************************************************************
* 
* Auteur: Jimmy Béland-Bédard
* 
************************************************************************/

class PacmanObject {
 
 //Variables du Pacman
 float posX, posY;
 float widthX, widthY;
 float startOfTheArc01, endOfTheArc01;
 float startOfTheArc02, endOfTheArc02;
 int currentframe = 0;
 float rotation;
 
 long previousTime;
 long currentTime;
 int animationDelay = 500;
 int animationAcc = 0;
 
 //Assignations des valeurs aux variables
  PacmanObject(float tempPosX, float tempPosY, float tempWidthX, float tempWidthY, float tempStart01, float tempEnd01, float tempStart02, float tempEnd02, float rotate )
  {
   posX = tempPosX;
   posY = tempPosY;
   widthX = tempWidthX;
   widthY = tempWidthY;
   startOfTheArc01 = tempStart01;
   endOfTheArc01 = tempEnd01; 
   startOfTheArc02 = tempStart02;
   endOfTheArc02 = tempEnd02; 
   rotation = rotate;
   
   currentTime = millis();
   previousTime = currentTime;
   animationAcc = 0;
  }
  
  
 //Fonction permettant de dessiner le pacman ayant la bouche ouverte 
  void pacmanBoucheOuvertDisplay()
  {
    background(0);
    pushMatrix();
    fill(255, 238, 0);
    stroke(0);
    translate(posX, posY);
    rotate(rotation);
    arc(0, 0,widthX, widthY, startOfTheArc01, endOfTheArc01, PIE);
    popMatrix();
  }
  
  //Fonction permettant de dessiner le pacman ayant la bouche fermé
  void pacmanBoucheFermeDisplay()
  {
    background(0);
    pushMatrix();
    fill(255, 238, 0);
    stroke(0);
    translate(posX, posY);
    rotate(rotation);
    arc(0, 0,widthX, widthY, startOfTheArc02, endOfTheArc02, PIE);
    popMatrix();
  }
  
  
  //Dessiner le pacman avec les animations
  void display()
  {
    currentTime = millis();
    
    animationAcc += currentTime - previousTime;
    
    if (animationAcc >= animationDelay) {
      animationAcc = 0;
      
      currentframe = ((currentframe + 1)%2);
    }
    
    if(currentframe == 0)
    {
      pacmanBoucheFermeDisplay();
    }else
    {
      pacmanBoucheOuvertDisplay();
  
    }
    
    previousTime = currentTime;
  }
  
}