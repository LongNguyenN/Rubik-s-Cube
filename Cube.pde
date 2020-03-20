
class Cube {
  
  Cubie[] cube;
  String[] rotates;
  ArrayList<String> shuffle;
  PMatrix3D rotateX;
  PMatrix3D rotateY;
  PMatrix3D rotateZ;
  
  public Cube() {
    cube = new Cubie[27];
    rotateX = new PMatrix3D();
    rotateY = new PMatrix3D();
    rotateZ = new PMatrix3D();
    rotates = new String[]{"UP", "CUP", "DOWN", "CDOWN", "LEFT", "CLEFT", "RIGHT", "CRIGHT", "FRONT", "CFRONT", "BACK", "CBACK"};
    shuffle = new ArrayList <String>();
    
    for(int x = -1; x < 2; x++) {
      for(int y = -1; y < 2; y++) {
        for(int z = -1; z < 2; z++) {
          cube[9*(x+1)+3*(y+1)+(z+1)] = new Cubie(new PVector(x*50,y*50,z*50), new PVector(100,100,100));
        }
      }
    }
  }
  
  void show() {
    for(int i=0; i < cube.length; i++){
      cube[i].show();
    }
  }
  
  void rotUp(float ang) {
    setRotateY(ang);
    for(int i=0; i < cube.length; i++){
      if(abs(cube[i].pos.y - -cube[i].size) < 0.005) {
        cube[i].pos = rotateY.mult(cube[i].pos, cube[i].pos);
        cube[i].rotY(ang, rotateY);
      }
    }
  }
  
  void animateRotateUp(float ang) {
    background(155);
    pushMatrix();
    rotateY(ang);
    for(int i=0; i < cube.length; i++){
      if(abs(cube[i].pos.y - -cube[i].size) < 0.005) {
        cube[i].show();
      }
    }
    popMatrix();
    for(int i=0; i < cube.length; i++){
      if(abs(cube[i].pos.y - -cube[i].size) >= 0.005) {
        cube[i].show();
      }
    }
  }
  
  //This could be combined with rotateUp
  void rotDown(float ang) {
    setRotateY(ang);
    for(int i=0; i < cube.length; i++){
      if(abs(cube[i].pos.y - cube[i].size) < 0.005) {
        cube[i].pos = rotateY.mult(cube[i].pos, cube[i].pos);
        cube[i].rotY(ang, rotateY);
      }
    }
  }
  
  void animateRotateDown(float ang) {
    background(155);
    pushMatrix();
    rotateY(ang);
    for(int i=0; i < cube.length; i++){
      if(abs(cube[i].pos.y - cube[i].size) < 0.005) {
        cube[i].show();
      }
    }
    popMatrix();
    for(int i=0; i < cube.length; i++){
      if(abs(cube[i].pos.y - cube[i].size) >= 0.005) {
        cube[i].show();
      }
    }
  }
  
  void rotLeft(float ang) {
    setRotateX(ang);
    for(int i=0; i < cube.length; i++){
      if(abs(cube[i].pos.x - -cube[i].size) < 0.005) {
        cube[i].pos = rotateX.mult(cube[i].pos, cube[i].pos);
        cube[i].rotX(ang, rotateX);
      }
    }
  }
  
  void animateRotateLeft(float ang) {
    background(155);
    pushMatrix();
    rotateX(ang);
    for(int i=0; i < cube.length; i++){
      if(abs(cube[i].pos.x - -cube[i].size) < 0.005) {
        cube[i].show();
      }
    }
    popMatrix();
    for(int i=0; i < cube.length; i++){
      if(abs(cube[i].pos.x - -cube[i].size) >= 0.005) {
        cube[i].show();
      }
    }
  }
  
  void rotRight(float ang) {
    setRotateX(ang);
    for(int i=0; i < cube.length; i++){
      if(abs(cube[i].pos.x - cube[i].size) < 0.005) {
        cube[i].pos = rotateX.mult(cube[i].pos, cube[i].pos);
        cube[i].rotX(ang, rotateX);
      }
    }
  }
  
  void animateRotateRight(float ang) {
    background(155);
    pushMatrix();
    rotateX(ang);
    for(int i=0; i < cube.length; i++){
      if(abs(cube[i].pos.x - cube[i].size) < 0.005) {
        cube[i].show();
      }
    }
    popMatrix();
    for(int i=0; i < cube.length; i++){
      if(abs(cube[i].pos.x - cube[i].size) >= 0.005) {
        cube[i].show();
      }
    }
  }
  
  void rotFront(float ang) {
    setRotateZ(ang);
    for(int i=0; i < cube.length; i++){
      if(abs(cube[i].pos.z - cube[i].size) < 0.005) {
        cube[i].pos = rotateZ.mult(cube[i].pos, cube[i].pos);
        cube[i].rotZ(ang, rotateZ);
      }
    }
  }
  
  void animateRotateFront(float ang) {
    background(155);
    pushMatrix();
    rotateZ(ang);
    for(int i=0; i < cube.length; i++){
      if(abs(cube[i].pos.z - -cube[i].size) < 0.005) {
        cube[i].show();
      }
    }
    popMatrix();
    for(int i=0; i < cube.length; i++){
      if(abs(cube[i].pos.z - -cube[i].size) >= 0.005) {
        cube[i].show();
      }
    }
  }
  
  void rotBack(float ang) {
    setRotateZ(ang);
    for(int i=0; i < cube.length; i++){
      if(abs(cube[i].pos.z - -cube[i].size) < 0.005) {
        cube[i].pos = rotateZ.mult(cube[i].pos, cube[i].pos);
        cube[i].rotZ(ang, rotateZ);
      }
    }
  }
  
  void animateRotateBack(float ang) {
    background(155);
    pushMatrix();
    rotateZ(ang);
    for(int i=0; i < cube.length; i++){
      if(abs(cube[i].pos.z - cube[i].size) < 0.005) {
        cube[i].show();
      }
    }
    popMatrix();
    for(int i=0; i < cube.length; i++){
      if(abs(cube[i].pos.z - cube[i].size) >= 0.005) {
        cube[i].show();
      }
    }
  }
  
  void setRotateX(float ang) {
    float sinA = sin(ang);
    float cosA = cos(ang);
    
    rotateX.set(
                1, 0,    0,     0,
                0, cosA, -sinA, 0,
                0, sinA, cosA,  0,
                0, 0,    0,     0
                );
  }
  
  void setRotateY(float ang) {
    float sinA = sin(ang);
    float cosA = cos(ang);
    
    rotateY.set(
                cosA,  0, sinA, 0,
                0,     1, 0,    0,
                -sinA, 0, cosA, 0,
                0,     0, 0,    0
                );
  }
  
  void setRotateZ(float ang) {
    float sinA = sin(ang);
    float cosA = cos(ang);
    
    rotateZ.set(
                cosA, -sinA, 0, 0,
                sinA, cosA,  0, 0,
                0,    0,     1, 0,
                0,    0,     0, 0
                );
    
  }
  
  void shuffle() {
    int random;
    for(int i = 0; i < 42; i++) {
      random = (int)(Math.random()*12);
      stringToRotate(rotates[random]);
      shuffle.add(rotates[random]);
    }
  }
  
  void stringToRotate(String rotate) {
    switch(rotate) {
      case "UP": rotUp(-PI/2);
      break;
      case "CUP": rotUp(PI/2);
      break;
      case "DOWN": rotDown(-PI/2);
      break;
      case "CDOWN": rotDown(PI/2);
      break;
      case "LEFT": rotLeft(-PI/2);
      break;
      case "CLEFT": rotLeft(PI/2);
      break;
      case "RIGHT": rotRight(-PI/2);
      break;
      case "CRIGHT": rotRight(PI/2);
      break;
      case "FRONT": rotFront(-PI/2);
      break;
      case "CFRONT": rotFront(PI/2);
      break;
      case "BACK": rotBack(-PI/2);
      break;
      case "CBACK": rotBack(PI/2);
      break;
      default: println("not a valid rotate");
      break;
    }
  }
  
  void stringToReverseRotate(String rotate) {
    switch(rotate) {
      case "UP": rotUp(PI/2);
      break;
      case "CUP": rotUp(-PI/2);
      break;
      case "DOWN": rotDown(PI/2);
      break;
      case "CDOWN": rotDown(-PI/2);
      break;
      case "LEFT": rotLeft(PI/2);
      break;
      case "CLEFT": rotLeft(-PI/2);
      break;
      case "RIGHT": rotRight(PI/2);
      break;
      case "CRIGHT": rotRight(-PI/2);
      break;
      case "FRONT": rotFront(PI/2);
      break;
      case "CFRONT": rotFront(-PI/2);
      break;
      case "BACK": rotBack(PI/2);
      break;
      case "CBACK": rotBack(-PI/2);
      break;
      default: println("not a valid rotate");
      break;
    }
  }
  
  void animateRotate(String rotate, float ang) {
    ang = radians(ang);
    switch(rotate) {
      case "UP": animateRotateUp(-ang);
      break;
      case "CUP": animateRotateUp(ang);
      break;
      case "DOWN": animateRotateDown(-ang);
      break;
      case "CDOWN": animateRotateDown(ang);
      break;
      case "LEFT": animateRotateLeft(-ang);
      break;
      case "CLEFT": animateRotateLeft(ang);
      break;
      case "RIGHT": animateRotateRight(-ang);
      break;
      case "CRIGHT": animateRotateRight(ang);
      break;
      case "FRONT": animateRotateBack(-ang);
      break;
      case "CFRONT": animateRotateBack(ang);
      break;
      case "BACK": animateRotateFront(-ang);
      break;
      case "CBACK": animateRotateFront(ang);
      break;
      default: println("not a valid rotate");
      break;
    }
  }
  
}
