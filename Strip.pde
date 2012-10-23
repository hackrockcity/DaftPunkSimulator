class Strip {
  int m_len = 160;
  
  List<VirtualRailSegment> m_segments;
  PVector m_start;
  PVector m_end;

  PVector m_multiplier;

  Strip( PVector start, PVector end, List<VirtualRailSegment> segments ) {
    m_multiplier = new PVector(50, 60);
    
    m_segments = segments;
    m_start = start;
    m_end = end;
  }


  void draw(color[] colors) {

    stroke(255);

    for (int v=0; v < m_segments.size(); v++) {
      VirtualRailSegment current_segment = m_segments.get(v);
      int segment_length = current_segment.m_length;

      PVector start_point = current_segment.m_point.get();
      start_point.mult(m_multiplier);

      PVector end_point;
      if (v == m_segments.size() - 1) {
        end_point = m_end.get();
      } 
      else {
        end_point = m_segments.get(v+1).m_point.get();
      }

      end_point.mult(m_multiplier);


      float amt = 1.0 / segment_length;
      for (int q=0; q < segment_length; q++) {

        int x = int(lerp(start_point.x, end_point.x, amt * q));
        int y = int(lerp(start_point.y, end_point.y, amt * q));

        println(x + " : " + y);
        color led_color = colors[current_segment.m_offset + q];
        stroke(led_color);
        rect(x, y , 3, 3);
      }
    }
  } //draw
}

