Puppy puppy;
Puppy puppy2;
int w = 400;
int x;
float wanderX, wanderY;
//color body ;
color head ;
color tongue = #FF0066;
float xbod;
color eye = color (255);
color eyes = color(245, 160, 200);
int poo;



void setup() {
  size(w, 600);
  background(255);
  noStroke();
  noCursor();
  poo = 0;
//x= 349;
  //body = color (#66CC33);
  //head = color(#336600);
  puppy = new Puppy(50, 50, color(30, 165, 200), color(30, 200, 255), color(75, 100, 255), color(0));
  puppy2 = new Puppy(0, 200, color(#336600), color(#66CC33), color(#FF0066), color(255));
}

void draw() {
 background(255);
  update();

pushMatrix();
  
  puppy.abody();
  puppy.ahead();
  puppy.eyes();
  puppy.mouth();
  puppy.tail();
  puppy.pupils(wanderX, wanderY);
  puppy.nose();
popMatrix();

  puppy2.abody();
  puppy2.ahead();
  puppy2.eyes();
  puppy2.mouth();
  //puppy2.tongue(tongue);
  puppy2.tail();
  puppy2.pupils(wanderX, wanderY);
  puppy2.nose();


  if (keyPressed) {
    if (key == 'a') {
      puppy2.x += 0.5;
    }
    if (key == 'd') {
      puppy2.x -= 0.5;
    }
    if (key == 32) {
      puppy2.fart();
    }
  }
  if (mousePressed) {
    puppy.eye = color(245, 160, 200);
    puppy.eyes();
    puppy.nose();
    poo = 1;
  }
  else {
    puppy.eye = color(255);
  }
  if(poo == 1){
      poo();

    }
  }

void poo(){
      fill(180,75,50);
      ellipse(330, 500, 40, 25);
}

void update() {
  puppy2.xbod = random(0, 5);
  wanderX = map(mouseX, 0, 600, -5, 5);
  wanderY = map(mouseY, 0, 600, -1, 1);
}

