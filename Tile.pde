
class Tile {
  
  PVector pos;
  int r,g,b;
  int size;
  
  public Tile(PVector pos) {
    this.pos = pos;
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
    translate(pos.x*size/2,pos.y*size/2,pos.z*size/2);
    if(abs(pos.x) > 0.05) {
      rotateY(PI/2);
    }
    if(abs(pos.y) > 0.05) {
      rotateX(PI/2);
    }
    rect(0, 0, size, size);
    popMatrix();
  }
  
}
