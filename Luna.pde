PShape s1,s2;
float t = 0, rg = 300, rl = 200, rt = 500;

void setup(){
  size(800, 800);
  surface.setResizable(true);
  s1 = loadShape("Luna1.svg");
  s2 = loadShape("Tierra3.svg");

}

void draw(){
 background(0);
 strokeWeight(3);
 stroke(255);
 noFill();
 
 ellipse((width)*0.5,(height)*0.5,600,600);
 shape(s2,(width)*0.5,(height)*0.5,rt,rt);
 shape(s1,rg*cos(t)+(width)*0.5,rg*sin(t)+(height)*0.5,rl,rl);
 t += 0.01;
 /*
 if((frameCount > 0)&&(frameCount < 100)){
   saveFrame("GIF/img_###.png");
   println(frameCount);
  }
  */
}
