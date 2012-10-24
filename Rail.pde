class Rail {
 
 private List<RailSegment> segments; 
 private List<RailSegmentLocation> locs;
 private PVector point;
  
 Rail (List<RailSegment> in_segs, List<RailSegmentLocation> in_locs, PVector in_point) {
   segments = in_segs;
   locs = in_locs;
   point = in_point;
 }
  
 void draw() {
   for (RailSegmentLocation s : locs) {
     s.draw(segments, point);
    }
  }
}
