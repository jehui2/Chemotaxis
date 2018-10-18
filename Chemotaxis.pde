int x;
int y;
int hue;
int hue1;
int hue2;
Bacteria [] colony;
//declare bacteria variables here   
void setup()   
{
   size (400, 400);
   colony = new Bacteria [100];
   for (int i = 0; i < colony.length; i ++)
     {
       colony [i] = new Bacteria();
     }
 	//initialize bacteria variables here   
 }   
void draw()   
{ 
  background (255);
  for (int i = 0; i < colony.length; i ++)
  {
    colony[i].move();
    colony[i].show();
  }
 	//move and show the bacteria   
 }  
 class Bacteria    
 {
   int myX, myY, myHue;
   Bacteria()
   {
     myX = 200;
     myY = 200;
   }
   void move()
   {
     myX = myX + (int)(Math.random()*3)-1;
     myY = myY + (int)(Math.random()*3)-1;
   }
   void show()
   {
     hue = (int)(Math.random()*256);
     hue1 = (int)(Math.random()*256);
     hue2 = (int)(Math.random()*256);
     fill(hue, hue1, hue2);
     ellipse(myX, myY, 40, 40);
   }
 	//lots of java!   
 }    
