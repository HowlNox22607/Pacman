/*************************************************************************
* Project: (Pacman)
* Fonction: Essai du dessin de Pacman
*************************************************************************
* 
* Auteur: Jimmy Béland-Bédard
* 
************************************************************************/

int numberOfPacman = 1;
float widthArcX = 80;
float widthArcY = 80;
float startOfArc01 = QUARTER_PI;
float endOfArc01 =  PI + HALF_PI + QUARTER_PI;
float startOfArc02 = 0;
float endOfArc02 =  2*PI - (QUARTER_PI/10000);
float rotationDuPacman = 0;

PacmanObject[] pacman = new PacmanObject[numberOfPacman];


void setup()
{
  size(displayWidth, displayHeight);
  float x = width/2;
  float y = height /2;
  pacman[0] = new PacmanObject(x, y, widthArcX, widthArcY, startOfArc01, endOfArc01, startOfArc02, endOfArc02, rotationDuPacman);
  }

void draw()
{
  background(0);
  pacman[0].display();
}