class Fixture {

  private List<Segment> segments;
  private PVector point;
  
  int fix_width;
  
  Fixture(List<Segment> in_segs, PVector in_point) {
    segments = in_segs;
    point = in_point;
    
    for (Segment seg : segments);
  }
  
  Fixture(List<Segment> in_segs, PVector in_point, boolean in_mirrored) {
    segments = in_segs;
    point = in_point;
    
    for (Segment seg : segments) {
      seg.mirrored = in_mirrored;
      
      if (in_mirrored) {
        for (SubSegment sub : seg.subSegments) {
          if (sub.pixel_end_position.x > fix_width) fix_width = int(sub.pixel_end_position.x);
        }
        
        for (SubSegment sub : seg.subSegments) {
          sub.pixel_start_position.x = fix_width - sub.pixel_start_position.x;
          sub.pixel_end_position.x = fix_width - sub.pixel_end_position.x; 
        }
      }
    }
  }

  void draw() {
    for (Segment segment : segments) { 
      pushMatrix();
      translate(point.x, point.y);
      segment.draw();
      popMatrix();
    }
  }
}

