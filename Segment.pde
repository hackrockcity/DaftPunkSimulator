class Segment {
  String m_name;
  int m_strip;
  int m_offset;
  int m_length;

  PVector m_startPosition;
  PVector m_endPosition;

  Segment(String name, int strip, int offset, int length, int startPoint, int endPoint) {
    m_name = name;
    m_strip = strip;
    m_offset = offset;
    m_length = length;

    m_startPosition = getPositionFromPoint(startPoint);
    m_endPosition   = getPositionFromPoint(endPoint);
  }

  Segment(String name, int strip, int offset, int length, PVector startPoint, PVector endPoint) {
    m_name = name;
    m_strip = strip;
    m_offset = offset;
    m_length = length;

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

  void draw() {

    stroke(currentImage[m_strip + strips*m_offset]);
    //stroke(255);
    strokeWeight(3);

    line(m_startPosition.x, m_startPosition.y, m_endPosition.x, m_endPosition.y);
  }
}

