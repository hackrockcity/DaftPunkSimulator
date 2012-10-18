import hypermedia.net.*;
import java.util.concurrent.*;

int lights_per_strip = 32*5;    // Number of lights along the strip
int strips = 8;
int packet_length = strips*lights_per_strip*3 + 1;

Boolean demoMode = true;
BlockingQueue newImageQueue;

UDP udp;
List<VirtualRailSegment> leftRail;    // Rail segment mapping

int animationStep = 0;
int maxConvertedByte = 0;

List<VirtualRailSegment> a_segments;
List<VirtualRailSegment> b_segments;
List<VirtualRailSegment> c_segments;
List<VirtualRailSegment> d_segments;
List<VirtualRailSegment> e_segments;
List<VirtualRailSegment> h_segments;

Strip a_strip;
Strip b_strip;
Strip c_strip;
Strip d_strip;
Strip e_strip;
Strip h_strip;

void setup() {
  size(1024, 850);
  colorMode(RGB,255);
  frameRate(60);
  newImageQueue = new ArrayBlockingQueue(2);

  udp = new UDP( this, 58082 );
  udp.listen( true );
  
  
  a_segments = new LinkedList<VirtualRailSegment>();
  a_segments.add(new VirtualRailSegment("A1", 0, 29, new PVector(9,1)));
  a_segments.add(new VirtualRailSegment("A2", 29, 24, new PVector(8,0))); //name, offset, length
  a_segments.add(new VirtualRailSegment("A3", 55, 24, new PVector(6,0)));
  a_segments.add(new VirtualRailSegment("A4", 81, 25, new PVector(4,0)));
  a_segments.add(new VirtualRailSegment("A5", 107, 25, new PVector(2,0)));
  a_segments.add(new VirtualRailSegment("A6", 132, 25, new PVector(0,0)));
  
  b_segments = new LinkedList<VirtualRailSegment>();
  b_segments.add(new VirtualRailSegment("B1", 0, 24, new PVector(8,0)));
  b_segments.add(new VirtualRailSegment("B2", 26, 23, new PVector(7,1)));
  b_segments.add(new VirtualRailSegment("B3", 52, 24, new PVector(6,2)));
  b_segments.add(new VirtualRailSegment("B4", 78, 24, new PVector(5,1)));
  b_segments.add(new VirtualRailSegment("B5", 104, 24, new PVector(4,0)));
  b_segments.add(new VirtualRailSegment("B6", 130, 24, new PVector(3,1)));
  
  c_segments = new LinkedList<VirtualRailSegment>();
  c_segments.add(new VirtualRailSegment("C1", 4, 24, new PVector(9,1)));
  c_segments.add(new VirtualRailSegment("C2", 31, 24, new PVector(7,1)));
  c_segments.add(new VirtualRailSegment("C3", 56, 25, new PVector(5,1)));
  c_segments.add(new VirtualRailSegment("C4", 83, 23, new PVector(3,1)));
  c_segments.add(new VirtualRailSegment("C5", 110, 23, new PVector(1,1)));
  c_segments.add(new VirtualRailSegment("C6", 138, 23, new PVector(2,0)));  //fixme
 
  d_segments = new LinkedList<VirtualRailSegment>();
  d_segments.add(new VirtualRailSegment("D1", 4, 24, new PVector(9,1)));
  d_segments.add(new VirtualRailSegment("D2", 29, 24, new PVector(8,2)));
  d_segments.add(new VirtualRailSegment("D3", 54, 24, new PVector(7,1)));
  d_segments.add(new VirtualRailSegment("D4", 81, 23, new PVector(6,0)));
  d_segments.add(new VirtualRailSegment("D5", 107, 24, new PVector(5,1)));
  d_segments.add(new VirtualRailSegment("D6", 132, 24, new PVector(4,2)));
  
  e_segments = new LinkedList<VirtualRailSegment>();
  e_segments.add(new VirtualRailSegment("E1", 3, 24, new PVector(9,1)));
  e_segments.add(new VirtualRailSegment("E2", 29, 25, new PVector(10,2)));
  e_segments.add(new VirtualRailSegment("E3", 55, 24, new PVector(8,2)));
  e_segments.add(new VirtualRailSegment("E4", 80, 26, new PVector(6,2)));
  e_segments.add(new VirtualRailSegment("E5", 107, 25, new PVector(4,2)));
  e_segments.add(new VirtualRailSegment("E6", 135, 23, new PVector(2,2)));
  
  h_segments = new LinkedList<VirtualRailSegment>();
  h_segments.add(new VirtualRailSegment("H1", 3, 24, new PVector(9,1)));
  h_segments.add(new VirtualRailSegment("H2", 29, 23, new PVector(8,0)));
  h_segments.add(new VirtualRailSegment("H3", 53, 26, new PVector(10,0)));
  h_segments.add(new VirtualRailSegment("H4", 80, 24, new PVector(12,0)));
  h_segments.add(new VirtualRailSegment("H5", 107, 23, new PVector(14,0)));
  h_segments.add(new VirtualRailSegment("H6", 132, 24, new PVector(13,1)));
  
  a_strip = new Strip(new PVector(9,1), new PVector(1,1), a_segments);
  b_strip = new Strip(new PVector(8,0), new PVector(2,2), b_segments);
  c_strip = new Strip(new PVector(9,1), new PVector(3,1), c_segments);
  d_strip = new Strip(new PVector(9,1), new PVector(3,1), d_segments);
  e_strip = new Strip(new PVector(9,1), new PVector(1,1), e_segments);
  h_strip = new Strip(new PVector(9,1), new PVector(15,1), h_segments);
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


void draw() {
  background(0);
  
  
  a_strip.draw();
//  b_strip.draw();
//  c_strip.draw();
//  d_strip.draw();
//  e_strip.draw();
//  h_strip.draw();
  
//  if (newImageQueue.size() > 0) {
//    color[] newImage = (color[])newImageQueue.remove();
//  }
}

