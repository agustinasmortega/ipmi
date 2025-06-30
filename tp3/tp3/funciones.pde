//f que no retorna valor
void dibujarObra(float x, float y, float a, float b, float aInt, float bInt){
  rect(x, y, a, b);
  rect(x + (a - aInt)/2, y + (b - bInt)/2, aInt, bInt);
}

//f que si retorna
float calcularEscala(float x, float y){
  float d = dist(mouseX, mouseY, x, y);
  return map(d, 0, 200, 1.5, 1);  // acercamiento/zoom
}
//f detecta cursor
boolean mouseDentro(float x, float y, float w, float h){
  return mouseX > x && mouseX < x + w && mouseY > y && mouseY < y + h;
}
