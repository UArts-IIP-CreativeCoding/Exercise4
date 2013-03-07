class Puppy { //class wrapper

  // decare variables or data types
  color body, head, tongue, eye;
  float xbod, x, y, wanderX, wanderY;

  Puppy(float tempX, float tempY, color hd, color bod, color ton, color eyes) { //class constructor
    println("we made a monster");
    body = bod;
    head = hd;
    tongue = ton;
    eye = eyes;
    x = tempX;
    y = tempY;
  } 

  //mouth
  void mouth() {
    fill(57, 57, 57);
    noStroke();
    ellipse(w/2+x, 255+y, 50, 30);
  }
  //nose
  void nose() {
    pigNose();
  }
  void pigNose(){
  //nose
  fill(252, 128, 165);
  noStroke();
  ellipse(w/2+x,200+y, 120, 100);
  //nostrial
  fill(50,50,50);
  noStroke();
  ellipse(w/2-30+x,200+y, 20, 40);
  ellipse(w/2+30+x,200+y, 20, 40);
}
  //eyes
  void eyes() {
    fill(eye);
    strokeWeight(15);
    ellipse(w/2-35+x, 175+y, 60, 60);
    ellipse(w/2+40+x, 175+y, 60, 60);
    
  }
 

  void pupils(float wX, float wY) {
    fill(0, 127, 225);
    noStroke();
    ellipse(w/2-35+x+wX, 175+y+wY, 40, 40);
    ellipse(w/2+40+x+wX, 175+y+wY, 40, 40);
  }


  //dogggggg
  void ahead() {
    fill(head);
    rect(w/2-75+x, 132+y, 175, 150);
    noFill();
  }
  void abody() {
    fill(body);
    rect(w/2+20+xbod+x, 220+y, 125, 75);
  }
  void tail() {
    fill(#000000);
    rect(w/2+140+x, 215+y, 25, 25);
  }
  void fart() {
    fill(180,75,50);
    ellipse(w/2+140+x, 300+y, 40, 25);
  }
 
}

