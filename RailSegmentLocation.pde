
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
//  RailSegment m_segment;
  
  PVector m_startPosition;
  PVector m_endPosition;
  
  int m_strip;
  int m_offset;
  int m_length;

  RailSegmentLocation(List<RailSegment> railSegments, String segmentName, int startPoint, int endPoint) {
    m_segmentName   = segmentName;
    
    // TODO: Look up the strip, offset, and length in the rail list.
    for(RailSegment s : railSegments) {
      if(s.m_name == segmentName) {
        m_strip = s.m_strip;
        m_offset = s.m_offset;
        m_length = s.m_length;
      }
    }
    
    m_startPosition = getPositionFromPoint(startPoint);
    m_endPosition   = getPositionFromPoint(endPoint);
  }

  void draw() {
    stroke(currentImage[m_strip + strips*m_offset]);
    //stroke(255);
    strokeWeight(3);
    
    line(m_startPosition.x, m_startPosition.y, m_endPosition.x, m_endPosition.y);
  }
}

