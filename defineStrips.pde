// Share this between the transmitter and simulator.

void defineStrips() {
  leftRail = Collections.synchronizedList(new LinkedList<RailSegment>());
  leftRail.add(new RailSegment("A2", 0, 29, 24));
  leftRail.add(new RailSegment("A3", 0, 55, 24));
  leftRail.add(new RailSegment("A4", 0, 81, 25));
  leftRail.add(new RailSegment("A5", 0, 107, 25));
  leftRail.add(new RailSegment("A6", 0, 133, 24));
  leftRail.add(new RailSegment("B1", 6, 0, 24));
  leftRail.add(new RailSegment("B2", 6, 26, 23));
  leftRail.add(new RailSegment("B3", 6, 52, 24));
  leftRail.add(new RailSegment("B4", 6, 78, 24));
  leftRail.add(new RailSegment("B5", 6, 104, 24));
  leftRail.add(new RailSegment("B6", 6, 130, 24));
  leftRail.add(new RailSegment("C1", 1, 4, 24));
  leftRail.add(new RailSegment("C2", 1, 31, 24));
  leftRail.add(new RailSegment("C3", 1, 56, 25));
  leftRail.add(new RailSegment("C4", 1, 83, 23));
  leftRail.add(new RailSegment("C5", 1, 110, 23));
  leftRail.add(new RailSegment("C6", 1, 138, 23));  //fixme
  leftRail.add(new RailSegment("D1", 2, 4, 24));
  leftRail.add(new RailSegment("D2", 2, 29, 24));
  leftRail.add(new RailSegment("D3", 2, 54, 24));
  leftRail.add(new RailSegment("D4", 2, 81, 23));
  leftRail.add(new RailSegment("D5", 2, 107, 24));
  leftRail.add(new RailSegment("D6", 2, 132, 24));
  leftRail.add(new RailSegment("E1", 7, 3, 24));
  leftRail.add(new RailSegment("E2", 7, 29, 25));
  leftRail.add(new RailSegment("E3", 7, 55, 24));
  leftRail.add(new RailSegment("E4", 7, 80, 26));
  leftRail.add(new RailSegment("E5", 7, 107, 25));
  leftRail.add(new RailSegment("E6", 7, 135, 23));
  leftRail.add(new RailSegment("H1", 3, 3, 24));
  leftRail.add(new RailSegment("H2", 3, 29, 23));
  leftRail.add(new RailSegment("H3", 3, 53, 26));
  leftRail.add(new RailSegment("H4", 3, 80, 24));
  leftRail.add(new RailSegment("H5", 3, 107, 23));
  leftRail.add(new RailSegment("H6", 3, 132, 24));


  rightRail = Collections.synchronizedList(new LinkedList<RailSegment>());
  rightRail.add(new RailSegment("A2", 0, 29, 24));
  rightRail.add(new RailSegment("A3", 0, 55, 24));
  rightRail.add(new RailSegment("A4", 0, 81, 25));
  rightRail.add(new RailSegment("A5", 0, 107, 25));
  rightRail.add(new RailSegment("A6", 0, 133, 24));
  rightRail.add(new RailSegment("B1", 6, 0, 24));
  rightRail.add(new RailSegment("B2", 6, 26, 23));
  rightRail.add(new RailSegment("B3", 6, 52, 24));
  rightRail.add(new RailSegment("B4", 6, 78, 24));
  rightRail.add(new RailSegment("B5", 6, 104, 24));
  rightRail.add(new RailSegment("B6", 6, 130, 24));
  rightRail.add(new RailSegment("C1", 1, 4, 24));
  rightRail.add(new RailSegment("C2", 1, 31, 24));
  rightRail.add(new RailSegment("C3", 1, 56, 25));
  rightRail.add(new RailSegment("C4", 1, 83, 23));
  rightRail.add(new RailSegment("C5", 1, 110, 23));
  rightRail.add(new RailSegment("C6", 1, 138, 23));  //fixme
  rightRail.add(new RailSegment("D1", 2, 4, 24));
  rightRail.add(new RailSegment("D2", 2, 29, 24));
  rightRail.add(new RailSegment("D3", 2, 54, 24));
  rightRail.add(new RailSegment("D4", 2, 81, 23));
  rightRail.add(new RailSegment("D5", 2, 107, 24));
  rightRail.add(new RailSegment("D6", 2, 132, 24));
  rightRail.add(new RailSegment("E1", 7, 3, 24));
  rightRail.add(new RailSegment("E2", 7, 29, 25));
  rightRail.add(new RailSegment("E3", 7, 55, 24));
  rightRail.add(new RailSegment("E4", 7, 80, 26));
  rightRail.add(new RailSegment("E5", 7, 107, 25));
  rightRail.add(new RailSegment("E6", 7, 135, 23));
  rightRail.add(new RailSegment("H1", 3, 3, 24));
  rightRail.add(new RailSegment("H2", 3, 29, 23));
  rightRail.add(new RailSegment("H3", 3, 53, 26));
  rightRail.add(new RailSegment("H4", 3, 80, 24));
  rightRail.add(new RailSegment("H5", 3, 107, 23));
  rightRail.add(new RailSegment("H6", 3, 132, 24));

  pyramidSegments = Collections.synchronizedList(new LinkedList<RailSegment>());
  pyramidSegments.add(new RailSegment("A2", 0, 29, 24));
  pyramidSegments.add(new RailSegment("A3", 0, 55, 24));
  pyramidSegments.add(new RailSegment("A4", 0, 81, 25));
  pyramidSegments.add(new RailSegment("A5", 0, 107, 25));
  pyramidSegments.add(new RailSegment("A6", 0, 133, 24));
  pyramidSegments.add(new RailSegment("B1", 6, 0, 24));
  pyramidSegments.add(new RailSegment("B2", 6, 26, 23));
  pyramidSegments.add(new RailSegment("B3", 6, 52, 24));
  pyramidSegments.add(new RailSegment("B4", 6, 78, 24));
  pyramidSegments.add(new RailSegment("B5", 6, 104, 24));
  pyramidSegments.add(new RailSegment("B6", 6, 130, 24));
}

void defineLeftRail() {

  LeftRailLocations = new LinkedList<RailSegmentLocation>();
  LeftRailLocations.add(new RailSegmentLocation( "A2", 4, 3));
  LeftRailLocations.add(new RailSegmentLocation( "A3", 3, 2));
  LeftRailLocations.add(new RailSegmentLocation( "A4", 2, 1));
  LeftRailLocations.add(new RailSegmentLocation( "A5", 1, 0));
  LeftRailLocations.add(new RailSegmentLocation( "A6", 0, 10));

  LeftRailLocations.add(new RailSegmentLocation( "B1", 4, 13));
  LeftRailLocations.add(new RailSegmentLocation( "B2", 13, 21));
  LeftRailLocations.add(new RailSegmentLocation( "B3", 21, 12));
  LeftRailLocations.add(new RailSegmentLocation( "B4", 12, 2));
  LeftRailLocations.add(new RailSegmentLocation( "B5", 2, 11));
  LeftRailLocations.add(new RailSegmentLocation( "B6", 11, 19));

  LeftRailLocations.add(new RailSegmentLocation( "C1", 14, 13));
  LeftRailLocations.add(new RailSegmentLocation( "C2", 13, 12));
  LeftRailLocations.add(new RailSegmentLocation( "C3", 12, 11));
  LeftRailLocations.add(new RailSegmentLocation( "C4", 11, 10));
  LeftRailLocations.add(new RailSegmentLocation( "C5", 10, 1));
  LeftRailLocations.add(new RailSegmentLocation( "C6", 1, 11));

  LeftRailLocations.add(new RailSegmentLocation( "D1", 14, 22));
  LeftRailLocations.add(new RailSegmentLocation( "D2", 22, 13));
  LeftRailLocations.add(new RailSegmentLocation( "D3", 13, 3));
  LeftRailLocations.add(new RailSegmentLocation( "D4", 3, 12));
  LeftRailLocations.add(new RailSegmentLocation( "D5", 12, 20));
  LeftRailLocations.add(new RailSegmentLocation( "D6", 20, 11));

  LeftRailLocations.add(new RailSegmentLocation( "E1", 14, 23));
  LeftRailLocations.add(new RailSegmentLocation( "E2", 23, 22));
  LeftRailLocations.add(new RailSegmentLocation( "E3", 22, 21));
  LeftRailLocations.add(new RailSegmentLocation( "E4", 21, 20));
  LeftRailLocations.add(new RailSegmentLocation( "E5", 20, 19));
  LeftRailLocations.add(new RailSegmentLocation( "E6", 19, 10));

  LeftRailLocations.add(new RailSegmentLocation( "F1", 14, 15));
  LeftRailLocations.add(new RailSegmentLocation( "F2", 15, 6));
  LeftRailLocations.add(new RailSegmentLocation( "F3", 6, 16));
  LeftRailLocations.add(new RailSegmentLocation( "F4", 16, 25));
  LeftRailLocations.add(new RailSegmentLocation( "F5", 25, 24));
  LeftRailLocations.add(new RailSegmentLocation( "F6", 24, 16));

  LeftRailLocations.add(new RailSegmentLocation( "G1", 14, 5));
  LeftRailLocations.add(new RailSegmentLocation( "G2", 5, 15));
  LeftRailLocations.add(new RailSegmentLocation( "G3", 15, 24));
  LeftRailLocations.add(new RailSegmentLocation( "G4", 24, 23));
  LeftRailLocations.add(new RailSegmentLocation( "G5", 23, 15));
  LeftRailLocations.add(new RailSegmentLocation( "G6", 15, 16));

  LeftRailLocations.add(new RailSegmentLocation( "H1", 14, 4));
  LeftRailLocations.add(new RailSegmentLocation( "H2", 4, 5));
  LeftRailLocations.add(new RailSegmentLocation( "H3", 5, 6));
  LeftRailLocations.add(new RailSegmentLocation( "H4", 6, 7));
  LeftRailLocations.add(new RailSegmentLocation( "H5", 7, 16));
  LeftRailLocations.add(new RailSegmentLocation( "H6", 16, 17));

  LeftRailLocations.add(new RailSegmentLocation( "J1", 18, 8));
  LeftRailLocations.add(new RailSegmentLocation( "J2", 8, 9));
  LeftRailLocations.add(new RailSegmentLocation( "J3", 9, 18));
  LeftRailLocations.add(new RailSegmentLocation( "J4", 18, 26));
  LeftRailLocations.add(new RailSegmentLocation( "J5", 26, 25));
  LeftRailLocations.add(new RailSegmentLocation( "J6", 25, 17));

  LeftRailLocations.add(new RailSegmentLocation( "K1", 18, 17));
  LeftRailLocations.add(new RailSegmentLocation( "K2", 17, 8));
  LeftRailLocations.add(new RailSegmentLocation( "K3", 8, 7));
  LeftRailLocations.add(new RailSegmentLocation( "K4", 7, 17));
  LeftRailLocations.add(new RailSegmentLocation( "K5", 17, 26));
}

void defineRightRail() {

  RightRailLocations = new LinkedList<RailSegmentLocation>();
  RightRailLocations.add(new RailSegmentLocation( "A2", 4, 3));
  RightRailLocations.add(new RailSegmentLocation( "A3", 3, 2));
  RightRailLocations.add(new RailSegmentLocation( "A4", 2, 1));
  RightRailLocations.add(new RailSegmentLocation( "A5", 1, 0));
  RightRailLocations.add(new RailSegmentLocation( "A6", 0, 10));

  RightRailLocations.add(new RailSegmentLocation( "B1", 4, 13));
  RightRailLocations.add(new RailSegmentLocation( "B2", 13, 21));
  RightRailLocations.add(new RailSegmentLocation( "B3", 21, 12));
  RightRailLocations.add(new RailSegmentLocation( "B4", 12, 2));
  RightRailLocations.add(new RailSegmentLocation( "B5", 2, 11));
  RightRailLocations.add(new RailSegmentLocation( "B6", 11, 19));

  RightRailLocations.add(new RailSegmentLocation( "C1", 14, 13));
  RightRailLocations.add(new RailSegmentLocation( "C2", 13, 12));
  RightRailLocations.add(new RailSegmentLocation( "C3", 12, 11));
  RightRailLocations.add(new RailSegmentLocation( "C4", 11, 10));
  RightRailLocations.add(new RailSegmentLocation( "C5", 10, 1));
  RightRailLocations.add(new RailSegmentLocation( "C6", 1, 11));

  RightRailLocations.add(new RailSegmentLocation( "D1", 14, 22));
  RightRailLocations.add(new RailSegmentLocation( "D2", 22, 13));
  RightRailLocations.add(new RailSegmentLocation( "D3", 13, 3));
  RightRailLocations.add(new RailSegmentLocation( "D4", 3, 12));
  RightRailLocations.add(new RailSegmentLocation( "D5", 12, 20));
  RightRailLocations.add(new RailSegmentLocation( "D6", 20, 11));

  RightRailLocations.add(new RailSegmentLocation( "E1", 14, 23));
  RightRailLocations.add(new RailSegmentLocation( "E2", 23, 22));
  RightRailLocations.add(new RailSegmentLocation( "E3", 22, 21));
  RightRailLocations.add(new RailSegmentLocation( "E4", 21, 20));
  RightRailLocations.add(new RailSegmentLocation( "E5", 20, 19));
  RightRailLocations.add(new RailSegmentLocation( "E6", 19, 10));

  RightRailLocations.add(new RailSegmentLocation( "F1", 14, 15));
  RightRailLocations.add(new RailSegmentLocation( "F2", 15, 6));
  RightRailLocations.add(new RailSegmentLocation( "F3", 6, 16));
  RightRailLocations.add(new RailSegmentLocation( "F4", 16, 25));
  RightRailLocations.add(new RailSegmentLocation( "F5", 25, 24));
  RightRailLocations.add(new RailSegmentLocation( "F6", 24, 16));

  RightRailLocations.add(new RailSegmentLocation( "G1", 14, 5));
  RightRailLocations.add(new RailSegmentLocation( "G2", 5, 15));
  RightRailLocations.add(new RailSegmentLocation( "G3", 15, 24));
  RightRailLocations.add(new RailSegmentLocation( "G4", 24, 23));
  RightRailLocations.add(new RailSegmentLocation( "G5", 23, 15));
  RightRailLocations.add(new RailSegmentLocation( "G6", 15, 16));

  RightRailLocations.add(new RailSegmentLocation( "H1", 14, 4));
  RightRailLocations.add(new RailSegmentLocation( "H2", 4, 5));
  RightRailLocations.add(new RailSegmentLocation( "H3", 5, 6));
  RightRailLocations.add(new RailSegmentLocation( "H4", 6, 7));
  RightRailLocations.add(new RailSegmentLocation( "H5", 7, 16));
  RightRailLocations.add(new RailSegmentLocation( "H6", 16, 17));

  RightRailLocations.add(new RailSegmentLocation( "J1", 18, 8));
  RightRailLocations.add(new RailSegmentLocation( "J2", 8, 9));
  RightRailLocations.add(new RailSegmentLocation( "J3", 9, 18));
  RightRailLocations.add(new RailSegmentLocation( "J4", 18, 26));
  RightRailLocations.add(new RailSegmentLocation( "J5", 26, 25));
  RightRailLocations.add(new RailSegmentLocation( "J6", 25, 17));

  RightRailLocations.add(new RailSegmentLocation( "K1", 18, 17));
  RightRailLocations.add(new RailSegmentLocation( "K2", 17, 8));
  RightRailLocations.add(new RailSegmentLocation( "K3", 8, 7));
  RightRailLocations.add(new RailSegmentLocation( "K4", 7, 17));
  RightRailLocations.add(new RailSegmentLocation( "K5", 17, 26));
}

void definePyramid() {
  pyramidSegmentLocations = new LinkedList<RailSegmentLocation>();
  pyramidSegmentLocations.add(new RailSegmentLocation( "A2", 300, 215, true));
  pyramidSegmentLocations.add(new RailSegmentLocation( "A3", 215, 130, true));
  pyramidSegmentLocations.add(new RailSegmentLocation( "A4", 130, 50, true));

  pyramidSegmentLocations.add(new RailSegmentLocation( "A2", 350, 250, true));
  pyramidSegmentLocations.add(new RailSegmentLocation( "A3", 250, 150, true));
  pyramidSegmentLocations.add(new RailSegmentLocation( "A4", 150, 50, true));
  
  pyramidSegmentLocations.add(new RailSegmentLocation( "A2", 399, 285, true));
  pyramidSegmentLocations.add(new RailSegmentLocation( "A3", 285, 170, true));
  pyramidSegmentLocations.add(new RailSegmentLocation( "A4", 170, 50, true));
  
  pyramidSegmentLocations.add(new RailSegmentLocation( "A4", 130, 150, true));
  pyramidSegmentLocations.add(new RailSegmentLocation( "A4", 150, 170, true));
  
  pyramidSegmentLocations.add(new RailSegmentLocation( "A2", 215, 250, true));
  pyramidSegmentLocations.add(new RailSegmentLocation( "A3", 250, 285, true));
  
  pyramidSegmentLocations.add(new RailSegmentLocation( "A4", 300, 350, true));
  pyramidSegmentLocations.add(new RailSegmentLocation( "A4", 350, 399, true));
 
}

