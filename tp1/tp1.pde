PImage miFoto;
//imagen de la variable:
miFoto = loadImage("data/foto_autoretrato.jpg"); 
// ventana
size(800,400);

//fondo
background(255);
//visualización selfie
image( miFoto , 0 , 0 , 400 ,400);





// rostro:

fill(245,190,140);

// quitar borde cara
noStroke();
 
 // forma cara
 
ellipse( 600, 150,136,175);

//ojos
fill(255);
ellipse(565, 130, 32, 18);

ellipse(635, 130, 32, 18);

// Iris
  fill(60, 40, 20); // color ojos
  ellipse(565, 130, 15, 15); // iris izquierdo
  ellipse(635, 130, 15, 15); // iris derecho
  
  // pupilas
  fill(0);
  ellipse(565, 130, 5, 5); // pupila izquierda
  ellipse(635, 130, 5, 5); // pupila derecha


/// cejas 
  stroke(30, 20, 10); 
  strokeWeight(2);
  noFill();
  arc(565, 122, 43, 18, PI + PI/8, TWO_PI - PI/3); 
  arc(635, 122, 43, 18, PI + PI/3, TWO_PI - PI/8);

  // Labios
  color lipColor = color(160, 90, 90);
  fill(lipColor);
  noStroke();

  // Labio superior
  arc(600, 195, 40, 23, 0, PI);

  // Labio inferior 
  arc(600, 195, 40, 13, PI, TWO_PI);

  // Nariz
  stroke(160, 110, 80);
  strokeWeight(2);
  line(600, 150, 600, 170); 
  
// pelo
stroke(20, 20, 20);
  strokeWeight(6);
stroke(20, 20, 20);
  strokeWeight(6);
  
stroke(20, 20, 20);
  strokeWeight(6);


stroke(20, 20, 20);
  strokeWeight(6);

  // Izquierda
  line(540, 70, 490, 250);
  line(520, 60, 480, 250);

  // Derecha
  line(660, 70, 700, 250);
  line(680, 60, 720, 250);

 // Izquierda
  line(540, 70, 490, 200);
  line(520, 60, 480, 200);
  line(530, 65, 480, 230);
  line(510, 55, 470, 230);

  // Derecha
  line(660, 70, 700, 200);
  line(680, 60, 720, 200);
  line(670, 65, 710, 230);
  line(690, 55, 730, 230);

  
  // Izquierda 
  line(550, 80, 510, 200);


  // Derecha
  line(650, 80, 690, 200);



  // flequillo
  line(580, 70, 540, 130);
  line(620, 70, 650, 130);


stroke(20, 20, 20);
  strokeWeight(6);

fill(20, 20, 20);
  noStroke();

  // espesor pelo coronilla 
  arc(600, 100, 200, 110, PI, TWO_PI - 0.1);
