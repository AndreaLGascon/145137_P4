void instruccion(){
  switch(pantalla){
    case 0:
    background(0,0,255);
    textSize(20);
    fill(255);
    text("Muevete en los diferentes cuadrantes de la pantalla\npara generar diferentes sonidosn\n\n\n\n\n\n\n\nPulsa Enter para continuar",100,200);
    if(key == ENTER){
      pantalla = 1;
    }
    break;
    
    case 1:
    background(0);
    D.detectar();
    noFill();
    stroke(0);
    strokeWeight(3);
    rect(0,0,320,240);
    noFill();
    stroke(0);
    strokeWeight(3);
    rect(320,0,320,240);
    noFill();
    stroke(0);
    strokeWeight(3);
    rect(0,240,320,240);
    noFill();
    stroke(0);
    strokeWeight(3);
    rect(320,240,320,240);
    break;
    
  }
}