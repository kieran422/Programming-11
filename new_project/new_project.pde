//global variables

int[] coords = {
  -400, 300, 80, 60, -200, 100, 200, 225, 0, 400, 150, 200,200,0,-400
};


color beige = #E3D28E;
color darkBeige = #9B8E5B;
color white = #FFFFFF;
color sandOrange = #EA9100;
color sandDark = #E8BA70;
color sandRed = #C14D17;
color Blue = #9DCFD8;
color darkBlue = #7F9BA0;
color lightBlue = #D3E4E8;

void setup() {
  size(800, 600);
  background(0);
  stars();
  moons();
  dunes ();
  sandworms();
  

}


//-----------------------------------------------------stars

void stars(){
  pushMatrix();
  translate(0,0);
  star1(random(0,800), random(0,300), random(0.1,0.4));
  star1(random(0,800), random(0,300), random(0.1,0.4));
  star1(random(0,800), random(0,300), random(0.1,0.4));
  
  
  int starCount = 0;
  while (starCount < 10) {
    star2(random(0,800), random(0,300), random(0.1,0.2));
    starCount++;
  }
  
  
    int starCount2 = 0;
  while (starCount2 < 30) {
    star3(random(0,800), random(0,300), random(0.1,0.2));
    starCount2++;
  }
   
   
  popMatrix();
}

void star1(float x, float y, float s) {
pushMatrix();
translate(x,y);
fill(255);
stroke(255);
circle(0,0,10);
stroke(0);
popMatrix();

}

void star2(float x, float y, float s) {
pushMatrix();
translate(x,y);
fill(255);
stroke(255);
circle(0,0,5);
stroke(0);
popMatrix();
}

void star3(float x, float y, float s) {
pushMatrix();
translate(x,y);
fill(255);
stroke(255);
circle(0,0,2);
stroke(0);
popMatrix();
}

//-----------------------------------------------------moons

void moons () {
  pushMatrix();
  translate(400, 300);
  moon1(random(-100, 100), random(-100,100), random(1,1));
  rotate(random(0,PI/2));
  scale(random(0.3,0.7));
  moon1(random(-100, 100), random(0,100), random(0,1));
  
  popMatrix();
}
  
  void moon1 (float x, float y, float s) {
    
    pushMatrix();
    translate( x, y);
    fill(Blue);
    ellipse(0,-200,100,100);
    fill(darkBlue);
    ellipse(-20,-220,10,10);
    ellipse(10,-170,8,8);
    ellipse(-17,-180,15,15);
    fill(lightBlue);
    ellipse(17,-220,5,5);
    popMatrix();
}
  
 
  
 
// ----------------------------------------------------dunes

void dunes () {
  pushMatrix();
  translate(400, 300);
  back(100, 100, 1);
  
  
  middle(100, 100, 1);
  
  
  front(100, 100, 1);
  

  popMatrix();
}

  void back (float x, float y, float s) {
  fill(sandRed);
  stroke(0);
  beginShape();
  curveVertex(-290,200);
  curveVertex(-290,200);
  curveVertex(-290,50);
  curveVertex(-100,0);
  curveVertex(50,20);
  curveVertex(150,0);
  curveVertex(250,0);
  curveVertex(400,-20);
  curveVertex(400,200);
  curveVertex(400,200);
  endShape();
  
}

void middle (float x, float y, float s) {
  
  fill(sandOrange);
  stroke(0);
  beginShape();
  curveVertex(300,300);
  curveVertex(300,300);
  curveVertex(300,137);
  curveVertex(170,100);
  curveVertex(-30,130);
  curveVertex(-150,60);
  curveVertex(-250,70);
  curveVertex(-400,0);
  curveVertex(-400,200);
  curveVertex(-400,200);
  endShape();
  
}

void front (float x, float y, float s) {
 fill(sandDark);
  stroke(0);
  beginShape();
  curveVertex(-400, 300); // the first control point
  curveVertex(-400, 300); // is also the start point of curve
  curveVertex(-400, 170);
  curveVertex(0, 225);
  curveVertex(175,150);
  curveVertex(350, 120);
  curveVertex(800, 00);
  curveVertex(800,800);// the last point of curve
  curveVertex(800, 800); // is also the last control point
  endShape();
}


 //<>//
//-------------------------------------------------------sandworms
void sandworms (){
  pushMatrix();
  translate(0,0);
  sandworm1(random(200, 400), random(300,325), random(0.3,0.3));
  sandworm1(random(500, 800), random(300,340), random(0.3,0.3));
  sandworm1(random(0, 800), random(430,500), 1);
 
  
  popMatrix();
}


//-------------------------------------------------------sandworm 1
void sandworm1 (float x, float y, float s) {

  pushMatrix();
  translate(x, y);
  scale(s);
  body(100, 100, 1);
  teeth(100, 100);
  cracks(100, 100);
  tale(100, 100);

  popMatrix();
}

void body(float x, float y, float s) {
  fill(beige);
  rect(0, 0, 50, 100);
  ellipse(25, 0, 50, 50);
  fill(darkBeige);
  ellipse(25, 0, 30, 30);
  
}

void teeth(int x, int y) {
  
  fill(white);
  triangle(20, 0, 10, -3, 10, 3); //left 
  triangle(30, 0, 40, -3, 40, 3); // right
  triangle(28, -15, 22, -15, 25, -5); // top
  triangle(28, 15, 22, 15, 25, 5); // bottom
  triangle(12, 8, 17, 13, 21, 4); // left bottom
  triangle(38, 8, 33, 13, 29, 4); // right bottom
  triangle(38, -8, 33, -13, 29, -4); // right top
  triangle(12, -8, 17, -13, 21, -4); // left top
 
}

void cracks(int x, int y) {
  
  //crack 1
  
  int count = 20;
  while ( count < 90) {
    
  noFill();
  stroke(0);
  beginShape();
  curveVertex(0,10+count);
  curveVertex(0,10+count);
  curveVertex(25,20+count);
  curveVertex(50,10+count);
  curveVertex(50,10+count);
  endShape();
  
  count = count + 20;
  }
}

void tale(int x, int y) {
  //body
  
  fill(beige);
  stroke (0);
  beginShape();
  curveVertex(-70,100);
  curveVertex(-70,100);
  curveVertex(-120,70);
  curveVertex(-170,100);
  curveVertex(-220,100);
  curveVertex(-120,30);
  curveVertex(-20,100);
  curveVertex(-70,100);
  curveVertex(-70,100);
  endShape();
  
  //details 1
  noFill();
  stroke (0);
  beginShape();
  curveVertex(-40,80);
  curveVertex(-40,80);
  curveVertex(-60,85);
  curveVertex(-72, 100);
  curveVertex(-72, 100);
  endShape();
  
  //details 2
  
  noFill();
  stroke (0);
  beginShape();
  curveVertex(-60,60);
  curveVertex(-60,60);
  curveVertex(-80,65);
  curveVertex(-92, 83);
  curveVertex(-92, 83);
  endShape();
  
  //details 3
  
  noFill();
  stroke (0);
  beginShape();
  curveVertex(-90,40);
  curveVertex(-90,40);
  curveVertex(-105,50);
  curveVertex(-112, 70);
  curveVertex(-112, 70);
  endShape();
  
  //details 4
  
  noFill();
  stroke (0);
  beginShape();
  curveVertex(-130,33);
  curveVertex(-130,33);
  curveVertex(-138,55);
  curveVertex(-132, 72);
  curveVertex(-132, 72);
  endShape();
  
  //details 5
  
  noFill();
  stroke (0);
  beginShape();
  curveVertex(-160,47);
  curveVertex(-160,47);
  curveVertex(-162,68);
  curveVertex(-147, 85);
  curveVertex(-147, 85);
  endShape();
  
   //details 6
  
  noFill();
  stroke (0);
  beginShape();
  curveVertex(-190,70);
  curveVertex(-190,70);
  curveVertex(-187,90);
  curveVertex(-170, 100);
  curveVertex(-170, 100);
  endShape();
  
  
}
