int imageNumber = 0;
int takepictureTimer = 0;

float numOne = 1;
float numTwo = 1;
float numTrhee = 1;


float r1 = 100;
float r2 = 200;
float r3 = 100;
float m1 = 10;
float m2 = 10;
float m3 = 10;
float a1 = 0;
float a2 = 0;
float a3 = 0;

float px1 = -1;
float py1 = -1;

float px2 = -1;
float py2 = -1;

float px3 = -1;
float py3 = -1;

PGraphics canvas;

void setup() {
  size(1000, 1000);
  canvas = createGraphics(1000, 1000);
  canvas.beginDraw();
  canvas.background(5);
  canvas.endDraw();
}

void draw(){
  //background(5);
  image(canvas, 0, 0);
  stroke(255);
  fill(255);
  strokeWeight(1);
  
  translate(500, 500);
  
  float x1 = r1 * sin(a1);
  float y1 = r1 * cos(a1);
  
  float x2 = x1 + r2 * sin(a2);
  float y2 = y1 + r2 * cos(a2);
  
  float x3 = x2 + r3 * sin(a3);
  float y3 = y2 + r3 * cos(a3);
  
  line(0, 0, x1, y1);
  line(x1, y1, x2, y2);
  line(x2, y2, x3, y3);
  ellipse(x1, y1, 16, 16);
  ellipse(x2, y2, 16, 16);
  ellipse(x3, y3, 16, 16);
  
  a1 += numOne;
  a2 += numTwo;
  a3 += numTrhee;
  
  if (takepictureTimer == 10000) {
    reset();
  }else {
    canvas.beginDraw();
    canvas.translate(500, 500);
    canvas.strokeWeight(1);
    canvas.stroke(255);
    if (frameCount > 1) {
      //canvas.line(px2, py2, x2, y2);
      canvas.line(px3, py3, x3, y3);
      //canvas.line(px1, py1, x1, y1);
      
      px2 = x2;
      py2 = y2;
      
      px1 = x1;
      py1 = y1;
      
      px3 = x3;
      py3 = y3;
      }
      canvas.endDraw();
    }

  
  
  
  
  
  if (keyPressed) {
    if (key == 'b' || key == 'B') {
      //saveFrame("art_" + imageNumber + ".PDF");
      imageNumber ++;
      reset();
    }
  }
  println(takepictureTimer);
  takepictureTimer ++; 
}


void reset(){
  //saveFrame("art_" + imageNumber + ".PDF");
    takepictureTimer = 0;
    imageNumber++;
    numOne = (random(0.001, 1) * 0.1);
    numTwo = (random(0.001, 1) * 0.1);
    numTrhee = (random(0.001, 1) * 0.1);
    canvas.beginDraw();
    canvas.background(5);
    canvas.endDraw();
}
