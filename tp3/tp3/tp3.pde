// trabajo práctico 3 - agustina maldonado ortega - legajo 122773/9 
// https://youtu.be/Gu4G8UMOmqM
// IPMI comisión 3 - Prof. David Bedoian

// link a la explicación: 

// variables globales

PImage obra;

float ancho = 187;
float alto = 190;
float anchoDos = 95;
float altoDos = 85;
float anchoP = 2;
float altoP = 2;

boolean animarCentro = false;
color colorFondo = color(255);
int tiempoInicio;

void setup(){
  size(800, 400);
  obra = loadImage("obra.png");
  tiempoInicio = millis();
}

void draw(){
  background(colorFondo);

  // obra óptica original y de referencia (izquierda)
  float imagenAlto = height;
  float imagenAncho = obra.width * (imagenAlto / obra.height);
  image(obra, 0, 0, imagenAncho, imagenAlto);

  // tp 3 (derecha)
  float startX = (400 - 2 * ancho) / 2 + 400;
  float startY = (height - 2 * alto) / 2;

  stroke(0);
  strokeWeight(25);
  noFill();

  // cuadrado - uso de ciclo FOR anidado (y condicionales)
  for (int i = 0; i < 2; i++){
    for (int j = 0; j < 2; j++){
      float x = startX + i * ancho;
      float y = startY + j * alto;

      if (mouseDentro(x, y, ancho, alto)) {
        fill(255, 0, 0, 100);
      } else {
        noFill();
      }
      dibujarObra(x, y, ancho, alto, anchoDos, altoDos);
    }
  }

  // centro del cuadrado central
  float centroX = startX + ancho;
  float centroY = startY + alto;

  // chequeamos si el mouse está dentro del cuadrado central
  animarCentro = mouseDentro(centroX - ancho / 2, centroY - alto / 2, ancho, alto);

 // uso de condicionales: if - else
  if (animarCentro) {
    float escala = calcularEscala(centroX, centroY);

    noStroke();
    fill(255);
    rect(centroX - (ancho * escala) / 2, centroY - (alto * escala) / 2, ancho * escala, alto * escala);

    stroke(0);
    strokeWeight(25);
    fill(random(255), random(255), random(255), 100);
    dibujarObra(centroX - (ancho * escala) / 2, centroY - (alto * escala) / 2, ancho * escala, alto * escala, anchoDos * escala, altoDos * escala);
    rect(centroX - anchoP / 2, centroY - altoP / 2, anchoP * escala, altoP * escala);
  } else {
    noStroke();
    fill(255);
    rect(centroX - ancho / 2, centroY - alto / 2, ancho, alto);

    stroke(0);
    strokeWeight(25);
    noFill();
    dibujarObra(centroX - ancho / 2, centroY - alto / 2, ancho, alto, anchoDos, altoDos);
    rect(centroX - anchoP / 2, centroY - altoP / 2, anchoP, altoP);
  }

  // cambiar de fondo cada 10 segundos
  if (millis() - tiempoInicio > 10000) {
    colorFondo = color(random(255), random(255), random(255));
    tiempoInicio = millis();
  }
}

void mousePressed(){
  colorFondo = color(random(255), random(255), random(255));
}
