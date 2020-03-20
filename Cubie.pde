
class Cubie {
  
  Tile[] tiles;
  PVector pos = new PVector();
  PVector col = new PVector();
  PVector ang = new PVector();
  int size = 50;
  
  Cubie(PVector pos, PVector col) {
    this.pos = pos;
    this.col = col;
    tiles = new Tile[6];
    setTiles();
  }
  
  void setTiles() {
    //white
    tiles[0] = new Tile(0,0,-1);
    tiles[0].setColor(255, 255, 255);
    //yellow
    tiles[1] = new Tile(0,0,1);
    tiles[1].setColor(255, 255, 0);
    //orange
    tiles[2] = new Tile(-1,0,0);
    tiles[2].setColor(255, 160, 0);
    //red
    tiles[3] = new Tile(1,0,0);
    tiles[3].setColor(255, 0, 0);
    //green
    tiles[4] = new Tile(0,-1,0);
    tiles[4].setColor(0, 255, 0);
    //blue
    tiles[5] = new Tile(0,1,0);
    tiles[5].setColor(0, 0, 255);
  }
  
  void show() {
    pushMatrix();
    translate(pos.x, pos.y, pos.z);
    rotateX(ang.x);
    rotateY(ang.y);
    rotateZ(ang.z);
    for(int i=0; i < tiles.length; i++) {
      tiles[i].show();
    }
    popMatrix();
  }
  
  void setXYZ(int x, int y, int z) {
    this.pos.x = x;
    this.pos.y = y;
    this.pos.z = z;
  }
  
  void setXYZ(PVector pos) {
    this.pos = pos;
  }
  
  void rotX(float ang) {
    this.ang.x = this.ang.x+ang;
  }
  
  void rotY(float ang) {
    this.ang.y = this.ang.y+ang;
  }
  
  void rotZ(float ang) {
    this.ang.z = this.ang.z+ang;
  }
  
}
