class Rail {
  
  private List<PhysicalRailSegment> rail_list;
  
  
  Rail() {
    rail_list = new LinkedList<PhysicalRailSegment>();
    rail_list.add(new PhysicalRailSegment("A2", new PVector(10,10), new PVector(100,100), 20));
  }
  
  
  
  void draw() {
    
    for (PhysicalRailSegment segment : rail_list) {
      segment.draw(color(255));
    }
     
    
  }
}
