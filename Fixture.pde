class Fixture {

  private List<Segment> segments;
  private PVector point;

  Fixture(List<Segment> in_segs, PVector in_point) {
    segments = in_segs;
    point = in_point;
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

