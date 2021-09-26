class CatcherModel
{
 int x;
 int y;
 int cathcerDiam;
 int colour;
 
 CatcherModel()
 {
   colour = 0;
 }
 
 void drawCatcher(int TempCatcherDiam)
 {
  cathcerDiam = TempCatcherDiam;
  x = mouseX;
  y = mouseY;
  fill(colour);
  circle(x,y,cathcerDiam); 
 }
 
}
