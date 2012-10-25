class SubSegment {
  private PVector info;
  public int strip;
  public int startLed;
  public int endLed;
  public int length;
  
  PVector m_startPosition;
  PVector m_endPosition;
  
  SubSegment(PVector in, int startPoint, int endPoint) {
    info = in;
    strip = int(info.x);
    startLed = int(info.y);
    endLed = int(info.z);
    length = abs(endLed - startLed);
    
    m_startPosition = getPositionFromPoint(startPoint);
    m_endPosition   = getPositionFromPoint(endPoint);
  }
  
   SubSegment(int num, PVector in) {
    info = in;
    strip = int(info.x);
    startLed = int(info.y);
    endLed = int(info.z);
    length = abs(endLed - startLed);
    
    PVector startPoint = new PVector(10 - num, num); //pixel space
    PVector endPoint = startPoint.get();
    endPoint.add(new PVector(length, 0));

    m_startPosition = getPositionFromPoint(startPoint);
    m_endPosition   = getPositionFromPoint(endPoint);
  }
  
    
  
    PVector getPositionFromPoint(int point) {
    float xScale = 70;
    float yScale = 70;
    float xOffset = 5;
    float yOffset = 5;

    float x;
    float y;

    if (point >= 0 && point <= 9) {
      x = point;
      y = 0;
    }
    else if (point < 19) {
      x = (point - 10) + .5;
      y = 1.11;
    }
    else if (point < 29) {
      x = (point - 20) + 2;
      y = 2.22;
    } 
    else {
      x = (point - 30) + 2;
      y = 3.33;
    }

    return new PVector(x*xScale + xOffset, y*yScale + yOffset);
  }
  
   PVector getPositionFromPoint(PVector point) {

    PVector scale = new PVector(5, 10);
    PVector offset = new PVector(0, 0);

    PVector out = point.get();
    out.mult(scale);
    out.add(offset);

    return out;
  }

}

class Segment {
  String m_name;
  List<SubSegment> subSegments;
  PVector m_startPosition;
  PVector m_endPosition;
  boolean rail = false;

  // For rails using the integer "point" system
  Segment(String name, int strip, int offset, int length, int startPoint, int endPoint) {
    m_name = name;
    rail = true;

    SubSegment sub = new SubSegment(new PVector(strip, offset, offset + length), startPoint, endPoint);
    subSegments = new LinkedList<SubSegment>();
    subSegments.add(sub);

  }

  // For Trapazoids because I forgot that some traps span two strips in both directions
  Segment(int num, PVector strip1) {
      
      SubSegment sub = new SubSegment(num, strip1);
      subSegments = new LinkedList<SubSegment>();
      subSegments.add(sub);

  }

  // For Trapazoids because I forgot that some traps span two strips in both directions
  Segment(int num, PVector strip1, PVector strip2) {
      SubSegment sub1 = new SubSegment(num, strip1);
      SubSegment sub2 = new SubSegment(num, strip2);
      
      sub2.m_startPosition.add(new PVector(sub1.m_endPosition.x, 0));
      sub2.m_endPosition.add(new PVector(sub1.m_endPosition.x, 0));
      
      subSegments = new LinkedList<SubSegment>();
      subSegments.add(sub1);
      subSegments.add(sub2);

  }




  void draw() {

    if (rail) {
      SubSegment seg = subSegments.get(0);
      stroke(currentImage[seg.strip + strips*seg.startLed]);  
      strokeWeight(3);
      line(m_startPosition.x, m_startPosition.y, m_endPosition.x, m_endPosition.y);
    } else {
      
      for (SubSegment seg : subSegments) {
        stroke(currentImage[seg.strip + strips*seg.startLed]);
        strokeWeight(3);
        float amt = 1.0 / seg.length;
        println("Subseg start x: " + seg.m_startPosition.x + " y: " + seg.m_startPosition.y);
        println("Subseg end x: " + seg.m_endPosition.x + " y: " + seg.m_endPosition.y);
        for (int x=0; x < seg.length; x++) {
          float q = amt * x;
          
          point(lerp(seg.m_startPosition.x, seg.m_endPosition.x, q), lerp(seg.m_startPosition.y, seg.m_endPosition.y, q)); 
        }
        
        
      }
    }
    
  
  }
}

