
// Get the x-y coordinates of a rail segment from the point number
PVector getPositionFromPoint(int point) {
  float xScale = 70;
  float yScale = 70;
  float xOffset = 5;
  float yOffset = 5;
  
  float x;
  float y;
  
  if(point >= 0 && point <= 9) {
    x = point;
    y = 0;
  }
  else if(point < 19) {
    x = (point - 10) + .5;
    y = 1.11;
  }
  else {
    x = (point - 19) + 1;
    y = 2.22;
  }
  
  return new PVector(x*xScale + xOffset, y*yScale + yOffset);
}


class RailSegmentLocation {
  String m_segmentName;  
  PVector m_startPosition;
  PVector m_endPosition;
  
  int m_strip;
  int m_offset;
  int m_length;

  RailSegmentLocation(String segmentName, int startPoint, int endPoint) {
    m_segmentName   = segmentName;
    m_startPosition = getPositionFromPoint(startPoint);
    m_endPosition   = getPositionFromPoint(endPoint);
  }

  void draw(List<RailSegment> segments, PVector railPoint) {
    
    PVector startpos = m_startPosition.get();
    PVector endpos = m_endPosition.get();

    startpos.add(railPoint);
    endpos.add(railPoint);
    
    if (m_strip == 0) {
      for(RailSegment s : segments) {
        if(s.m_name == m_segmentName) {
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

