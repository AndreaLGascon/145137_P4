import gab.opencv.*;
import java.awt.Rectangle;
import processing.video.*;
import ddf.minim.*;

Capture camara;
OpenCV opencv;
Rectangle[] ojos;
Minim sonido;
deteccion D;

PImage imagenCara;
PImage imagenOjo;
int pantalla;
AudioSample sonido1;
AudioSample sonido2;
AudioSample sonido3;
AudioSample sonido4;

void setup(){
  size(740,480);
  // Imprime lista de cámaras
  String [] opciones = Capture.list();
  printArray(opciones);
 
  camara = new Capture(this, 640, 480);
  camara.start();
  opencv = new OpenCV(this, camara.width, camara.height);
  opencv.loadCascade(OpenCV.CASCADE_FRONTALFACE);
  ojos = opencv.detect();
 
  imagenCara = createImage(100,100,RGB);
  imagenOjo = createImage(100,100,RGB);
  sonido = new Minim(this);
  sonido1 = sonido.loadSample("angry meow.wav");
  sonido2 = sonido.loadSample("angry pig.wav");
  sonido3 = sonido.loadSample("dinosaurio1.wav");
  sonido4 = sonido.loadSample("perro comiendo huesos.wav");
  D = new deteccion();
  
}

void draw(){
  instruccion();
}

void captureEvent(Capture c) {
  c.read();
}