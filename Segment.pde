class SubSegment {
  //private PVector info;
  public int m_strip;
  public int m_start;
  public int m_length;
  public PVector m_startpoint; // prescaled
  public PVector m_endpoint;

  PVector pixel_start_position; //post scaled
  PVector pixel_end_position;

  SubSegment(String name, int strip, int offset, int length, int startPoint, int endPoint) {
    m_strip = strip;
    m_start = offset;
    m_length = length;

    pixel_start_position = getPositionFromPoint(startPoint);
    pixel_end_position   = getPositionFromPoint(endPoint);
  }


  SubSegment(int num, int strip, int start, int length, int offset) {
    m_strip = strip;
    m_start = start;
    m_length = length;

    PVector startPoint = new PVector(10 - num, num); //pixel space
    startPoint.add(new PVector(offset, 0));

    PVector endPoint = startPoint.get();
    endPoint.add(new PVector(abs(length), 0));

    m_startpoint = startPoint;
    m_endpoint = endPoint;

    pixel_start_position = getPositionFromPoint(startPoint);
    pixel_end_position   = getPositionFromPoint(endPoint);
    
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

    SubSegment sub = new SubSegment(name, strip, offset, length, startPoint, endPoint);
    subSegments = new LinkedList<SubSegment>();
    subSegments.add(sub);
  }

  Segment(int num, int strip, int start, int length) {

    SubSegment sub = new SubSegment(num, strip, start, length, 0);
    subSegments = new LinkedList<SubSegment>();
    subSegments.add(sub);
  }

  Segment(int num, int strip1, int start1, int length1, int strip2, int start2, int length2) {
    SubSegment sub1 = new SubSegment(num, strip1, start1, length1, 0);
    SubSegment sub2 = new SubSegment(num, strip2, start2, length2, abs(length1));

    subSegments = new LinkedList<SubSegment>();
    subSegments.add(sub1);
    subSegments.add(sub2);
  }


  void draw() {
    strokeWeight(3);

    if (rail) {
      SubSegment seg = subSegments.get(0);
      stroke(currentImage[seg.m_strip + strips*seg.m_start]);  
      line(seg.pixel_start_position.x, seg.pixel_start_position.y, seg.pixel_end_position.x, seg.pixel_end_position.y);
    } 
    else {

      for (SubSegment seg : subSegments) {
        float amt = 1.0 / abs(seg.m_length);
        
        for (int x=0; x < abs(seg.m_length); x++) {
          float q = amt * x;
          if (seg.m_length < 0) {
            stroke(currentImage[seg.m_strip + strips*seg.m_start + (seg.m_length - x)]);
          } else {
            stroke(currentImage[seg.m_strip + strips*seg.m_start + x]);
          }
          
          PVector point = new PVector(lerp(seg.pixel_start_position.x, seg.pixel_end_position.x, q), lerp(seg.pixel_start_position.y, seg.pixel_end_position.y, q)); 
          //println(point);
          point(point.x, point.y);
        }
      }
    }
  }
}

