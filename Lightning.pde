int startX = 150;
int startY = 0;
int endX = 150; 
int endY = 0;  

void setup()
{
  size(500,500);
  background(0,0,0); 
  strokeWeight(10);  
}

void draw()
{  
  stroke(248,255,49); //lightning
  while (endX <= 500) {
    endX = startX + (int)(Math.random() * 50) - 20; 
    endY = startY + (int)(Math.random() * 19) + 9; 
    line(startX, startY + 80, endX, endY + 80); 
    startX = endX;
    startY = endY; 
  }

  fill(178,176,176); //clouds
  for(int x = 25; x <= 500; x+=60){
    noStroke(); 
    ellipse(x, 15, 150, 150);
  }
  
  fill(59,196,57); //grass
  rect(0, 400, 500, 100); 
}

void mousePressed()
{
  startX = 150;
  startY = 0;
  endX = 150; 
  endY = 0; 
}
