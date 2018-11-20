class deteccion{
  deteccion(){
  }
  
  void detectar(){
    opencv.loadImage(camara);
  if(camara.available()){
    camara.read(); 
    Rectangle[] caras = opencv.detect();
    println(caras.length);
    image(camara,0,0,camara.width,camara.height);
    for(int indice=0; indice<caras.length; indice++){
      Rectangle cara = caras[indice];
      noFill();
      strokeWeight(5);
      stroke(255,255,0);
      // Copia cara
      imagenCara.copy(camara, cara.x, cara.y, cara.width, cara.height,0,0,imagenCara.width, imagenCara.height);
      // Copia ojo
      imagenOjo.copy(camara, cara.x+cara.width/6, cara.y+cara.height/4, cara.width/4, cara.height/4, 0, 0, imagenOjo.width, imagenOjo.height);
      // Cara
      rect(cara.x, cara.y, cara.width, cara.height);
      // Ojo derech
      stroke(#1811F5);
      rect(cara.x+cara.width/6, cara.y+cara.height/4, cara.width/4, cara.height/4);
      // Ojo izquierdo
      stroke(#FF7003);
      rect(cara.x+cara.width*5/6-cara.width/4, cara.y+cara.height/4, cara.width/4, cara.height/4);
      
      if(caras[indice].x <= width/2 && caras[indice].y <= height/2){
        sonido1.trigger();
      }
      else if(caras[indice].x >= width/2 && caras[indice].y >= height/2){
        sonido2.trigger();
      }
      else if(caras[indice].x >= width/2 && caras[indice].y <= height/2){
        sonido3.trigger();
      }
      else if(caras[indice].x <= width/2 && caras[indice].y >= height/2){
        sonido4.trigger();
      }
      
    }
    image(imagenCara, camara.width, 0);
    image(imagenOjo, camara.width, imagenCara.height);      
    
  }
  }
  
}