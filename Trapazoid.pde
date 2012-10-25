class Trapazoid {
 
 private List<TrapazoidSegment> segments; 
 private List<TrapazoidSegmentLocation> locs;
 private PVector point;
  
 Trapazoid (List<TrapazoidSegment> in_segs, List<TrapazoidSegmentLocation> in_locs, PVector in_point) {
   segments = in_segs;
   locs = in_locs;
   point = in_point;
 }
  
 void draw() {
   for (TrapazoidSegmentLocation s : locs) {
     //this could be a push matrix or whatever
     s.draw(segments, point);
    }
  }
}
