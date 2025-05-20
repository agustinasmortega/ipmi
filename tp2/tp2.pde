// Agustina Maldonado Ortega Legajo 122773/9 - IPMI COMISIÓN 3. Prof. David Bedoian

// declaraciones

int numPantalla;
int contadorTiempo; 
float textoX; 

// imágenes
PImage imagen1, imagen2, imagen3;

// fuente de processing
PFont miFuente;

// botón
float botonX, botonY, botonAncho, botonAlto;

void setup() {
  size(640, 480); 
  frameRate(30); 
  
  // inicio
  numPantalla = 0;
  contadorTiempo = 0;
  textoX = -300; // el texto arranca desde la izq
  
  // cargar fuente
  miFuente = loadFont("apple.vlw");
  textFont(miFuente, 24);
  
  // cargar imágenes
  imagen1 = loadImage("imagen1.jpg");
  imagen2 = loadImage("imagen2.jpg");
  imagen3 = loadImage("imagen3.jpg");
  
  // botón
  botonX = width / 2;
  botonY = height - 80;
  botonAncho = 150;
  botonAlto = 60;
}

 void draw() {
  background(255);
  
  // PANTALLA 1
  if (numPantalla == 0) {
    image(imagen1, 0, 0, width, height); // imagen de fondo
    
    // texto entrando desde la izq
    if (textoX < width / 2) {
      textoX += 5;
    }
    
     fill(0); 
    textAlign(CENTER, CENTER);
    textSize(24);
    text("El Principito: Experiencia Inmersiva\nUna propuesta audiovisual para toda la familia,\ndonde arte y tecnología se combinan\nen una sala envolvente", textoX, height / 2);
  }
  
  // PANTALLA 2
  else if (numPantalla == 1) {
    image(imagen2, 0, 0, width, height); // mostrar imagen de fondo
    
    // texto entrando desde la izq
    if (textoX < width / 2) {
      textoX += 5;
    }
    
     fill(0); 
    textAlign(CENTER, CENTER);
    textSize(24);
    text("Proyecciones 360° y sonido envolvente\nte sumergen en el mágico universo de El Principito", textoX, height / 2);
  }
  
  // PANTALLA 3
  else if (numPantalla == 2) {
    image(imagen3, 0, 0, width, height); // mostrar imagen de fondo
    
    // fade in
    int opacidad = int(map(contadorTiempo, 0, 300, 0, 255));
     fill(0, opacidad); // texto con transparencia
    textAlign(CENTER, CENTER);
     textSize(24);
    
   
    text("El invierno pasado fui con amigos\nal CCK a disfrutar esta maravillosa experiencia.", width / 2, height / 3);
    
    // botón
      fill(0, 150, 255);
     ellipse(botonX, botonY, botonAncho, botonAlto);
    
    // texto reinicio presentación
    fill(255);
     textSize(20);
    textAlign(CENTER, CENTER);
    text("Reiniciar", botonX, botonY);
  }

  // 
  contadorTiempo++;
  if (contadorTiempo > 300) { 
    contadorTiempo = 0;
    numPantalla++;
    textoX = -300; // reiniciar
    
    if (numPantalla > 2) {
      numPantalla = 2; // quedarse en la última pantalla
    }
  }
}

 void mousePressed() {
  // si estamos en la pantalla 3, verificar si se clickeó el botón
  if (numPantalla == 2) {
    if (dist(mouseX, mouseY, botonX, botonY) < botonAncho / 2) {
      // reiniciar tp2
      numPantalla = 0;
      contadorTiempo = 0;
      textoX = -300;
      return;
    }
  }

  // avance con clic
  numPantalla++;
  contadorTiempo = 0;
  textoX = -300;
  
  if (numPantalla > 2) {
    numPantalla = 2;
  }
}
