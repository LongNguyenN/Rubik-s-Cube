
class Tile {
  
  int x,y,z;
  int r,g,b;
  int size;
  
  public Tile(int x, int y, int z) {
    this.x = x;
    this.y = y;
    this.z = z;
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
    translate(x*size/2,y*size/2,z*size/2);
    if(x != 0) {
      rotateY(PI/2);
    } else if(y != 0) {
      rotateX(PI/2);
    }
    rect(0, 0, size, size);
    popMatrix();
  }
  
}
