class PhysicalRailSegment {
  String m_name;
  int m_len;
  PVector m_start;
  PVector m_end;

  PhysicalRailSegment(String name, PVector start, PVector end, int len) {
    m_name = name;
    m_len = len;
    m_start = start;
    m_end = end;
  }

  void draw(color c) {
    stroke(c);

    for (int i=0; i < m_len; i++) {

      float amt = (1.0 / m_len) * i;

      float x = lerp(m_start.x, m_end.x, amt);
      float y = lerp(m_start.y, m_end.y, amt);

      rect(x, y, 5, 5);
    }
  }
}

