
float t;
int takepictureTimer = 0;
int imageNumber = 0;

float numOne = 10;
float numTwo = 20;
float numTrhee = 100;
float numFour = 200;

void setup() {
  background(20);
  size(1000, 1000);
}

void draw() {
  stroke(255);
  strokeWeight(3);
  
  translate(width/2, height/2);
  
  point(x(t), y(t));
  t++;
  takepictureTimer ++;
  
  if (takepictureTimer == 6000) {
    reset();
  }
  println(takepictureTimer);
  
  if (keyPressed) {
    if (key == 'b' || key == 'B') {
      reset();
    }
  }
  
}


void reset(){
  saveFrame("art_" + imageNumber + ".PDF");
    //takepictureTimer = 0;
    imageNumber++;
    numOne = random(-200, 200);
    numTwo = random(-200, 200);
    numTrhee = random(-400, 400);
    numFour = random(-50, 50);
    background(20);
}

float x(float t) {
  return sin(t / 20) * numOne + sin(t / numFour) * numTrhee;
}

float y(float t) {
  return cos(t / 20) * numTwo;
}
