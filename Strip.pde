class Strip {

  private int s_len = 160;
  private List<VirtualRailSegment> s_segments;
  private PVector s_start;
  private PVector s_end;

  PVector multiplier = new PVector(50, 60);

  Strip( PVector start, PVector end, List<VirtualRailSegment> segments ) {

    s_segments = segments;
    s_start = start;
    s_end = end;
  }


  void draw(color[] colors) {

    stroke(255);

    for (int v=0; v < s_segments.size(); v++) {
      VirtualRailSegment current_segment = s_segments.get(v);
      int segment_length = current_segment.m_length;

      PVector start_point = current_segment.m_point.get();
      start_point.mult(multiplier);

      PVector end_point;
      if (v == s_segments.size() - 1) {
        end_point = s_end.get();
      } 
      else {
        end_point = s_segments.get(v+1).m_point.get();
      }

      end_point.mult(multiplier);


      float amt = 1.0 / segment_length;
      for (int q=0; q < segment_length; q++) {

        int x = int(lerp(start_point.x, end_point.x, amt * q));
        int y = int(lerp(start_point.y, end_point.y, amt * q));

        println(x + " : " + y);
        led_color = colors[current_segment.m_offset + q];
        stroke(led_color);
        rect(x, y , 3, 3);
      }
    }
  } //draw
}

