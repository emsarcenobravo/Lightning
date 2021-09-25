int startX = 300;
int startY = 10;
int endX = 300;
int endY = 0;
int y = 80;

void setup(){
noLoop();
size(600,600);
//background(192,192,192);
background(0,0,0);
strokeWeight(4);
frameRate(20);
}
void draw(){
//rain
noStroke();
fill(0,0,255);
ellipse(150,y,5,10);
y = y + 12;
ellipse(200,y,5,10);
y = y + 6;
ellipse(250,y,5,10);
y = y + 12;
ellipse(300,y,5,10);
y = y + 6;
ellipse(350,y,5,10);
y = y + 12;
ellipse(400,y,5,10);
y = y + 6;
if(y > width + 20){
  y = 80;
}
fill(0,0,0,15);
rect(0,0,600,600);
//lightning
stroke((int)(Math.random()*139),(int)(Math.random()*44),(int)(Math.random()*227));
while(endY < 601){
   startY = startY + 1;
   endY = startY + ((int)(Math.random()*9));
   endX = startX + ((int)(Math.random()*18)-9);
   line(startX,startY,endX,endY);
   startX = endX;
   startY = endY;
}
 
//cloud
fill(105,105,105);
noStroke();
//big middle
ellipse(300,95,230,180);
//second left
ellipse(180,120,130,100);
//bottom left
ellipse(130,140,100,50);
//second right
ellipse(420,129,130,100);
//bottom right
ellipse(470,140,100,50);
}
void mousePressed(){
background(0,0,0);
startX = 300;
startY = 10;
endX = 300;
endY = 0;
redraw();
}
 
