
// Get the x-y coordinates of a rail segment from the point number
//PVector getTrapazoidPositionFromPoint(int point) {
//  float xScale = 70;
//  float yScale = 70;
//  float xOffset = 5;
//  float yOffset = 5;
//
//  float x;
//  float y;
//
//  if (point >= 0 && point <= 9) {
//    x = point;
//    y = 0;
//  }
//  else if (point < 19) {
//    x = (point - 10) + .5;
//    y = 1.11;
//  }
//  else if (point < 29) {
//    x = (point - 20) + 2;
//    y = 2.22;
//  } 
//  else {
//    x = (point - 30) + 2;
//    y = 3.33;
//  }
//
//  return new PVector(x*xScale + xOffset, y*yScale + yOffset);
//}

PVector getTrapazoidPositionFromPoint(PVector point) {

  PVector scale = new PVector(5, 10);
  PVector offset = new PVector(0, 0);

  PVector out = point.get();
  out.mult(scale);
  out.add(offset);

  return out;
}

class TrapazoidSegmentLocation {
  String m_segmentName;  
  PVector m_startPosition;
  PVector m_endPosition;
  boolean pyramid;

  int m_strip;
  int m_offset;
  int m_length;

  TrapazoidSegmentLocation(String segmentName, PVector startPoint, PVector endPoint) {
    m_segmentName   = segmentName;
    m_startPosition = getTrapazoidPositionFromPoint(startPoint);
    m_endPosition   = getTrapazoidPositionFromPoint(endPoint);
  }

  void draw(List<TrapazoidSegment> segments, PVector trapPoint) {

    PVector startpos = m_startPosition.get();
    PVector endpos = m_endPosition.get();

    startpos.add(trapPoint);
    endpos.add(trapPoint);

    if (m_strip == 0) {
      for (TrapazoidSegment s : segments) {
        if (s.m_name == m_segmentName) {
          m_strip = s.m_strip;
          m_offset = s.m_offset;
          m_length = s.m_length;
        }
      }
    }

    stroke(currentImage[m_strip + strips*m_offset]);
    //stroke(255);
    strokeWeight(3);

    line(startpos.x, startpos.y, endpos.x, endpos.y);
  }
}

