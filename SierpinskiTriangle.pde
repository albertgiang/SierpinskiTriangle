public void setup(){
  size(1000, 1000);
  background(0);
}

public void draw(){
  sierpinski(0, 1000, 1000);
  
}

public void mouseDragged(){
  
}

public void sierpinski(int x, int y, int len) {
  if(len <= 25){
    fill(randomRed(), randomGreen(), randomBlue());
    triangle(x, y, x + len / 2, y - len, x + len, y);
  } else {
    fill(randomRed(), randomGreen(), randomBlue());
    sierpinski(x, y, len / 2);
    sierpinski(x + len / 2, y , len / 2);
    sierpinski(x + len / 4, y - len / 2, len / 2);
  }
}

public int randomRed(){
  int red = (int)(Math.random() * 356);
  return red;
}

public int randomGreen(){
  int green = (int)(Math.random() * 356);
  return green;
}

public int randomBlue(){
  int blue = (int)(Math.random() * 356);
  return blue;
}
