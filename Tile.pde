
class Tile {
  
  PVector localPos;
  int r,g,b;
  int size;
  
  public Tile(int x, int y, int z) {
    this.localPos = new PVector();
    this.localPos.x = x;
    this.localPos.y = y;
    this.localPos.z = z;
    size = 50;
  }
  
  void setColor(int red, int green, int blue) {
    r = red;
    g = green;
    b = blue;
  }
  
  void show() {
    rectMode(CENTER);
    fill(r,g,b);
    pushMatrix();
    translate(localPos.x*size/2,localPos.y*size/2,localPos.z*size/2);
    if(abs(localPos.x) > 0.05) {
      rotateY(PI/2);
    }
    if(abs(localPos.y) > 0.05) {
      rotateX(PI/2);
    }
    rect(0, 0, size, size);
    popMatrix();
  }
  
}
