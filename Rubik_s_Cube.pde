import peasy.*;

PeasyCam camera;
Cube cube;
boolean drawing;
String rotate;

void setup() {
  size(500, 500, P3D);
  camera = new PeasyCam(this, 300);
  cube = new Cube();
  cube.shuffle();
  drawing = false;
}

int inverse = 0;
int ang = 0;
void draw() {
  if(drawing) {
    background(155);
    drawTurn();
  } else {
    computeTurn();
    drawing=true;
  }
}

void computeTurn() {
  if(inverse < 42) {
    rotate = cube.shuffle.get(41-inverse);
    cube.stringToReverseRotate(rotate);
    inverse++;
    ang = 30;
  }
}

void drawTurn() {
  if(ang > 0) {
    cube.animateRotate(rotate, 3*ang);
    ang--;
  } else {
    cube.show();
    drawing = false;
  }
}

void keyPressed() {
  println(keyCode);
  switch(keyCode) {
    case 81: cube.rotUp(-PI/2); ang = 30; rotate = "CUP"; break;
    case 87: cube.rotUp(PI/2); ang = 30; rotate = "UP"; break;
    case 65: cube.rotDown(-PI/2); ang = 30; rotate = "CDOWN"; break;
    case 83: cube.rotDown(PI/2); ang = 30; rotate = "DOWN"; break;
    case 69: cube.rotLeft(-PI/2); ang = 30; rotate = "CLEFT"; break;
    case 68: cube.rotLeft(PI/2); ang = 30; rotate = "LEFT"; break;
    case 82: cube.rotRight(-PI/2); ang = 30; rotate = "CRIGHT"; break;
    case 70: cube.rotRight(PI/2); ang = 30; rotate = "RIGHT"; break;
    case 90: cube.rotFront(-PI/2); ang = 30; rotate = "CFRONT"; break;
    case 88: cube.rotFront(PI/2); ang = 30; rotate = "FRONT"; break;
    case 67: cube.rotBack(-PI/2); ang = 30; rotate = "CBACK"; break;
    case 86: cube.rotBack(PI/2); ang = 30; rotate = "BACK"; break;
  }
}
