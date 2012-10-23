import hypermedia.net.*;
import java.util.concurrent.*;

int lights_per_strip = 32*5;
int strips = 40;
int packet_length = strips*lights_per_strip*3 + 1;


Boolean demoMode = true;
BlockingQueue newImageQueue;

UDP udp;

ImageHud imageHud;
DemoTransmitter demoTransmitter;

int animationStep = 0;
int maxConvertedByte = 0;

List<RailSegment> leftRail;    // Rail segment mapping
List<RailSegmentLocation> RailSegmentLocations;


void setup() {
  size(1024, 850);
  colorMode(RGB,255);
  frameRate(60);
  newImageQueue = new ArrayBlockingQueue(2);

  imageHud = new ImageHud(20, height-160-20, strips, lights_per_strip);

  udp = new UDP( this, 58082 );
  udp.listen( true );

// Copied from DaftPunkTransmitter
  defineStrips();
// Copied from DaftPunkTransmitter


  RailSegmentLocations = new LinkedList<RailSegmentLocation>();
  RailSegmentLocations.add(new RailSegmentLocation(leftRail, "A2", 4,  3));
  RailSegmentLocations.add(new RailSegmentLocation(leftRail, "A3", 3,  2));
  RailSegmentLocations.add(new RailSegmentLocation(leftRail, "A4", 2,  1));
  RailSegmentLocations.add(new RailSegmentLocation(leftRail, "A5", 1,  0));
  RailSegmentLocations.add(new RailSegmentLocation(leftRail, "A6", 0,  10));
   
  RailSegmentLocations.add(new RailSegmentLocation(leftRail, "B1", 4,  13));
  RailSegmentLocations.add(new RailSegmentLocation(leftRail, "B2", 13, 21));
  RailSegmentLocations.add(new RailSegmentLocation(leftRail, "B3", 21, 12));
  RailSegmentLocations.add(new RailSegmentLocation(leftRail, "B4", 12, 2));
  RailSegmentLocations.add(new RailSegmentLocation(leftRail, "B5", 2,  11));
  RailSegmentLocations.add(new RailSegmentLocation(leftRail, "B6", 11, 19));

  RailSegmentLocations.add(new RailSegmentLocation(leftRail, "C1", 14, 13));
  RailSegmentLocations.add(new RailSegmentLocation(leftRail, "C2", 13, 12));
  RailSegmentLocations.add(new RailSegmentLocation(leftRail, "C3", 12, 11));
  RailSegmentLocations.add(new RailSegmentLocation(leftRail, "C4", 11, 10));
  RailSegmentLocations.add(new RailSegmentLocation(leftRail, "C5", 10,  1));
  RailSegmentLocations.add(new RailSegmentLocation(leftRail, "C6",  1, 11));
  
  RailSegmentLocations.add(new RailSegmentLocation(leftRail, "D1", 14, 22));
  RailSegmentLocations.add(new RailSegmentLocation(leftRail, "D2", 22, 13));
  RailSegmentLocations.add(new RailSegmentLocation(leftRail, "D3", 13,  3));
  RailSegmentLocations.add(new RailSegmentLocation(leftRail, "D4",  3, 12));
  RailSegmentLocations.add(new RailSegmentLocation(leftRail, "D5", 12, 20));
  RailSegmentLocations.add(new RailSegmentLocation(leftRail, "D6", 20, 11));
  
  RailSegmentLocations.add(new RailSegmentLocation(leftRail, "E1", 14, 23));
  RailSegmentLocations.add(new RailSegmentLocation(leftRail, "E2", 23, 22));
  RailSegmentLocations.add(new RailSegmentLocation(leftRail, "E3", 22, 21));
  RailSegmentLocations.add(new RailSegmentLocation(leftRail, "E4", 21, 20));
  RailSegmentLocations.add(new RailSegmentLocation(leftRail, "E5", 20, 19));
  RailSegmentLocations.add(new RailSegmentLocation(leftRail, "E6", 19, 10));
  
  RailSegmentLocations.add(new RailSegmentLocation(leftRail, "F1", 14, 15));
  RailSegmentLocations.add(new RailSegmentLocation(leftRail, "F2", 15,  6));
  RailSegmentLocations.add(new RailSegmentLocation(leftRail, "F3",  6, 16));
  RailSegmentLocations.add(new RailSegmentLocation(leftRail, "F4", 16, 25));
  RailSegmentLocations.add(new RailSegmentLocation(leftRail, "F5", 25, 24));
  RailSegmentLocations.add(new RailSegmentLocation(leftRail, "F6", 24, 16));
  
  RailSegmentLocations.add(new RailSegmentLocation(leftRail, "G1", 14,  5));
  RailSegmentLocations.add(new RailSegmentLocation(leftRail, "G2",  5, 15));
  RailSegmentLocations.add(new RailSegmentLocation(leftRail, "G3", 15, 24));
  RailSegmentLocations.add(new RailSegmentLocation(leftRail, "G4", 24, 23));
  RailSegmentLocations.add(new RailSegmentLocation(leftRail, "G5", 23, 15));
  RailSegmentLocations.add(new RailSegmentLocation(leftRail, "G6", 15, 16));

  RailSegmentLocations.add(new RailSegmentLocation(leftRail, "H1", 14,  4));
  RailSegmentLocations.add(new RailSegmentLocation(leftRail, "H2",  4,  5));
  RailSegmentLocations.add(new RailSegmentLocation(leftRail, "H3",  5,  6));
  RailSegmentLocations.add(new RailSegmentLocation(leftRail, "H4",  6,  7));
  RailSegmentLocations.add(new RailSegmentLocation(leftRail, "H5",  7, 16));
  RailSegmentLocations.add(new RailSegmentLocation(leftRail, "H6", 16, 17));

  RailSegmentLocations.add(new RailSegmentLocation(leftRail, "J1", 18,  8));
  RailSegmentLocations.add(new RailSegmentLocation(leftRail, "J2",  8,  9));
  RailSegmentLocations.add(new RailSegmentLocation(leftRail, "J3",  9, 18));
  RailSegmentLocations.add(new RailSegmentLocation(leftRail, "J4", 18, 26));
  RailSegmentLocations.add(new RailSegmentLocation(leftRail, "J5", 26, 25));
  RailSegmentLocations.add(new RailSegmentLocation(leftRail, "J6", 25, 17));
  
  RailSegmentLocations.add(new RailSegmentLocation(leftRail, "K1", 18, 17));
  RailSegmentLocations.add(new RailSegmentLocation(leftRail, "K2", 17,  8));
  RailSegmentLocations.add(new RailSegmentLocation(leftRail, "K3",  8,  7));
  RailSegmentLocations.add(new RailSegmentLocation(leftRail, "K4",  7, 17));
  RailSegmentLocations.add(new RailSegmentLocation(leftRail, "K5", 17, 26));

  demoTransmitter = new DemoTransmitter();
  demoTransmitter.start();
}


int convertByte(byte b) {
  int c = (b<0) ? 256+b : b;

  if (c > maxConvertedByte) {
    maxConvertedByte = c;
    println("Max Converted Byte is now " + c);
  }  
  
  return c;
}

void receive(byte[] data, String ip, int port) {  
  //println(" new datas!");
  if (demoMode) {
    println("Started receiving data from " + ip + ". Demo mode disabled.");
    demoMode = false;
  }
  
  if (data[0] == 2) {
    // We got a new mode, so copy it out
    String modeName = new String(data);

    return;
  }

  if (data[0] != 1) {
    println("Packet header mismatch. Expected 1, got " + data[0]);
    return;
  }

  if (data.length != packet_length) {
    println("Packet size mismatch. Expected "+packet_length+", got " + data.length);
    return;
  }

  if (newImageQueue.size() > 0) {
    println("Buffer full, dropping frame!");
    return;
  }

  color[] newImage = new color[strips*lights_per_strip];

  for (int i=0; i< strips*lights_per_strip; i++) {
      // Processing doesn't like it when you call the color function while in an event
      // go figure
      newImage[i] = (int)(0xff<<24 | convertByte(data[i*3 + 1])<<16) | (convertByte(data[i*3 + 2])<<8) | (convertByte(data[i*3 + 3]));
  }
  try { 
    newImageQueue.put(newImage);
  } 
  catch( InterruptedException e ) {
    println("Interrupted Exception caught");
  }
}

color[] currentImage = null;

void draw() {
  background(0);
  
  if(currentImage != null) {
    for( RailSegmentLocation l : RailSegmentLocations) {
      // Each segment should just look at currentImage.
      l.draw();
    }
  }
  
  imageHud.draw();
  
  if (newImageQueue.size() > 0) {
    color[] newImage = (color[])newImageQueue.remove();
    
    imageHud.update(newImage);
    currentImage = newImage;
  }
}

