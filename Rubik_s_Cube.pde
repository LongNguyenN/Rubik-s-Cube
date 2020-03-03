import peasy.*;

PeasyCam camera;
Cube cube;

void setup() {
  size(500, 500, P3D);
  camera = new PeasyCam(this, 50, 50, 50, 300);
  cube = new Cube();
}

void draw() {
  background(151);
  cube.show();
}

void keyPressed() {
  println(keyCode);
  switch(keyCode) {
    case 81: cube.rotUp(-PI/2); break;
    case 87: cube.rotUp(PI/2); break;
    case 65: cube.rotDown(-PI/2); break;
    case 83: cube.rotDown(PI/2); break;
    case 69: cube.rotLeft(-PI/2); break;
    case 68: cube.rotLeft(PI/2); break;
    case 82: cube.rotRight(-PI/2); break;
    case 70: cube.rotRight(PI/2); break;
    case 90: cube.rotFront(-PI/2); break;
    case 88: cube.rotFront(PI/2); break;
    case 67: cube.rotBack(-PI/2); break;
    case 86: cube.rotBack(PI/2); break;
  }
}
