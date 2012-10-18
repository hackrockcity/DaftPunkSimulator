class VirtualRailSegment {
  String m_name;
  int m_offset;
  int m_length;
  PVector m_point;
  
  VirtualRailSegment(String name, int offset, int length, PVector point) {
    m_name = name;
    m_offset = offset;
    m_length = length;
    m_point = point;
  }
  
//  void draw(color c) {
//    stroke(c);
//    //line(m_strip, m_offset, m_strip, m_offset + m_length);
//  }
}

