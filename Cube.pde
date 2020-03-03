
class Cube {
  
  Cubie[] cube;
  PMatrix3D rotateX;
  PMatrix3D rotateY;
  PMatrix3D rotateZ;
  
  public Cube() {
    cube = new Cubie[27];
    rotateX = new PMatrix3D();
    rotateY = new PMatrix3D();
    rotateZ = new PMatrix3D();
    
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
        cube[i].rotY(ang);
      }
    }
  }
  
  //This could be combined with rotateUp
  void rotDown(float ang) {
    setRotateY(ang);
    for(int i=0; i < cube.length; i++){
      if(abs(cube[i].pos.y - cube[i].size) < 0.005) {
        cube[i].pos = rotateY.mult(cube[i].pos, cube[i].pos);
        cube[i].rotY(ang);
      }
    }
  }
  
  void rotLeft(float ang) {
    setRotateX(ang);
    for(int i=0; i < cube.length; i++){
      if(abs(cube[i].pos.x - -cube[i].size) < 0.005) {
        cube[i].pos = rotateX.mult(cube[i].pos, cube[i].pos);
        cube[i].rotX(ang);
      }
    }
  }
  
  void rotRight(float ang) {
    setRotateX(ang);
    for(int i=0; i < cube.length; i++){
      if(abs(cube[i].pos.x - cube[i].size) < 0.005) {
        cube[i].pos = rotateX.mult(cube[i].pos, cube[i].pos);
        cube[i].rotX(ang);
      }
    }
  }
  
  void rotFront(float ang) {
    setRotateZ(ang);
    for(int i=0; i < cube.length; i++){
      if(abs(cube[i].pos.z - cube[i].size) < 0.005) {
        cube[i].pos = rotateZ.mult(cube[i].pos, cube[i].pos);
        cube[i].rotZ(ang);
      }
    }
  }
  
  void rotBack(float ang) {
    setRotateZ(ang);
    for(int i=0; i < cube.length; i++){
      if(abs(cube[i].pos.z - -cube[i].size) < 0.005) {
        cube[i].pos = rotateZ.mult(cube[i].pos, cube[i].pos);
        cube[i].rotZ(ang);
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
  
}
