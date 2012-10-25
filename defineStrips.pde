//// Share this between the transmitter and simulator.
//
//void defineStrips() {
//  leftRail = Collections.synchronizedList(new LinkedList<RailSegment>());
//  leftRail.add(new RailSegment("A2", 0, 29, 24));
//  leftRail.add(new RailSegment("A3", 0, 55, 24));
//  leftRail.add(new RailSegment("A4", 0, 81, 25));
//  leftRail.add(new RailSegment("A5", 0, 107, 25));
//  leftRail.add(new RailSegment("A6", 0, 133, 24));
//  leftRail.add(new RailSegment("B1", 6, 0, 24));
//  leftRail.add(new RailSegment("B2", 6, 26, 23));
//  leftRail.add(new RailSegment("B3", 6, 52, 24));
//  leftRail.add(new RailSegment("B4", 6, 78, 24));
//  leftRail.add(new RailSegment("B5", 6, 104, 24));
//  leftRail.add(new RailSegment("B6", 6, 130, 24));
//  leftRail.add(new RailSegment("C1", 1, 4, 24));
//  leftRail.add(new RailSegment("C2", 1, 31, 24));
//  leftRail.add(new RailSegment("C3", 1, 56, 25));
//  leftRail.add(new RailSegment("C4", 1, 83, 23));
//  leftRail.add(new RailSegment("C5", 1, 110, 23));
//  leftRail.add(new RailSegment("C6", 1, 138, 23));  //fixme
//  leftRail.add(new RailSegment("D1", 2, 4, 24));
//  leftRail.add(new RailSegment("D2", 2, 29, 24));
//  leftRail.add(new RailSegment("D3", 2, 54, 24));
//  leftRail.add(new RailSegment("D4", 2, 81, 23));
//  leftRail.add(new RailSegment("D5", 2, 107, 24));
//  leftRail.add(new RailSegment("D6", 2, 132, 24));
//  leftRail.add(new RailSegment("E1", 7, 3, 24));
//  leftRail.add(new RailSegment("E2", 7, 29, 25));
//  leftRail.add(new RailSegment("E3", 7, 55, 24));
//  leftRail.add(new RailSegment("E4", 7, 80, 26));
//  leftRail.add(new RailSegment("E5", 7, 107, 25));
//  leftRail.add(new RailSegment("E6", 7, 135, 23));
//  leftRail.add(new RailSegment("H1", 3, 3, 24));
//  leftRail.add(new RailSegment("H2", 3, 29, 23));
//  leftRail.add(new RailSegment("H3", 3, 53, 26));
//  leftRail.add(new RailSegment("H4", 3, 80, 24));
//  leftRail.add(new RailSegment("H5", 3, 107, 23));
//  leftRail.add(new RailSegment("H6", 3, 132, 24));
//
//
//  rightRail = Collections.synchronizedList(new LinkedList<RailSegment>());
//  rightRail.add(new RailSegment("A2", 0, 29, 24));
//  rightRail.add(new RailSegment("A3", 0, 55, 24));
//  rightRail.add(new RailSegment("A4", 0, 81, 25));
//  rightRail.add(new RailSegment("A5", 0, 107, 25));
//  rightRail.add(new RailSegment("A6", 0, 133, 24));
//  rightRail.add(new RailSegment("B1", 6, 0, 24));
//  rightRail.add(new RailSegment("B2", 6, 26, 23));
//  rightRail.add(new RailSegment("B3", 6, 52, 24));
//  rightRail.add(new RailSegment("B4", 6, 78, 24));
//  rightRail.add(new RailSegment("B5", 6, 104, 24));
//  rightRail.add(new RailSegment("B6", 6, 130, 24));
//  rightRail.add(new RailSegment("C1", 1, 4, 24));
//  rightRail.add(new RailSegment("C2", 1, 31, 24));
//  rightRail.add(new RailSegment("C3", 1, 56, 25));
//  rightRail.add(new RailSegment("C4", 1, 83, 23));
//  rightRail.add(new RailSegment("C5", 1, 110, 23));
//  rightRail.add(new RailSegment("C6", 1, 138, 23));  //fixme
//  rightRail.add(new RailSegment("D1", 2, 4, 24));
//  rightRail.add(new RailSegment("D2", 2, 29, 24));
//  rightRail.add(new RailSegment("D3", 2, 54, 24));
//  rightRail.add(new RailSegment("D4", 2, 81, 23));
//  rightRail.add(new RailSegment("D5", 2, 107, 24));
//  rightRail.add(new RailSegment("D6", 2, 132, 24));
//  rightRail.add(new RailSegment("E1", 7, 3, 24));
//  rightRail.add(new RailSegment("E2", 7, 29, 25));
//  rightRail.add(new RailSegment("E3", 7, 55, 24));
//  rightRail.add(new RailSegment("E4", 7, 80, 26));
//  rightRail.add(new RailSegment("E5", 7, 107, 25));
//  rightRail.add(new RailSegment("E6", 7, 135, 23));
//  rightRail.add(new RailSegment("H1", 3, 3, 24));
//  rightRail.add(new RailSegment("H2", 3, 29, 23));
//  rightRail.add(new RailSegment("H3", 3, 53, 26));
//  rightRail.add(new RailSegment("H4", 3, 80, 24));
//  rightRail.add(new RailSegment("H5", 3, 107, 23));
//  rightRail.add(new RailSegment("H6", 3, 132, 24));
//
//}
//
//void defineLeftRail() {
//
//  LeftRailLocations = new LinkedList<RailSegmentLocation>();
//  LeftRailLocations.add(new RailSegmentLocation( "A2", 4, 30));
//  LeftRailLocations.add(new RailSegmentLocation( "A3", 3, 2));
//  LeftRailLocations.add(new RailSegmentLocation( "A4", 2, 1));
//  LeftRailLocations.add(new RailSegmentLocation( "A5", 1, 0));
//  LeftRailLocations.add(new RailSegmentLocation( "A6", 0, 10));
//
//  LeftRailLocations.add(new RailSegmentLocation( "B1", 4, 13));
//  LeftRailLocations.add(new RailSegmentLocation( "B2", 13, 21));
//  LeftRailLocations.add(new RailSegmentLocation( "B3", 21, 12));
//  LeftRailLocations.add(new RailSegmentLocation( "B4", 12, 2));
//  LeftRailLocations.add(new RailSegmentLocation( "B5", 2, 11));
//  LeftRailLocations.add(new RailSegmentLocation( "B6", 11, 19));
//
//  LeftRailLocations.add(new RailSegmentLocation( "C1", 14, 13));
//  LeftRailLocations.add(new RailSegmentLocation( "C2", 13, 12));
//  LeftRailLocations.add(new RailSegmentLocation( "C3", 12, 11));
//  LeftRailLocations.add(new RailSegmentLocation( "C4", 11, 10));
//  LeftRailLocations.add(new RailSegmentLocation( "C5", 10, 1));
//  LeftRailLocations.add(new RailSegmentLocation( "C6", 1, 11));
//
//  LeftRailLocations.add(new RailSegmentLocation( "D1", 14, 22));
//  LeftRailLocations.add(new RailSegmentLocation( "D2", 22, 13));
//  LeftRailLocations.add(new RailSegmentLocation( "D3", 13, 3));
//  LeftRailLocations.add(new RailSegmentLocation( "D4", 3, 12));
//  LeftRailLocations.add(new RailSegmentLocation( "D5", 12, 20));
//  LeftRailLocations.add(new RailSegmentLocation( "D6", 20, 11));
//
//  LeftRailLocations.add(new RailSegmentLocation( "E1", 14, 23));
//  LeftRailLocations.add(new RailSegmentLocation( "E2", 23, 22));
//  LeftRailLocations.add(new RailSegmentLocation( "E3", 22, 21));
//  LeftRailLocations.add(new RailSegmentLocation( "E4", 21, 20));
//  LeftRailLocations.add(new RailSegmentLocation( "E5", 20, 19));
//  LeftRailLocations.add(new RailSegmentLocation( "E6", 19, 10));
//
//  LeftRailLocations.add(new RailSegmentLocation( "F1", 14, 15));
//  LeftRailLocations.add(new RailSegmentLocation( "F2", 15, 6));
//  LeftRailLocations.add(new RailSegmentLocation( "F3", 6, 16));
//  LeftRailLocations.add(new RailSegmentLocation( "F4", 16, 25));
//  LeftRailLocations.add(new RailSegmentLocation( "F5", 25, 24));
//  LeftRailLocations.add(new RailSegmentLocation( "F6", 24, 16));
//
//  LeftRailLocations.add(new RailSegmentLocation( "G1", 14, 5));
//  LeftRailLocations.add(new RailSegmentLocation( "G2", 5, 15));
//  LeftRailLocations.add(new RailSegmentLocation( "G3", 15, 24));
//  LeftRailLocations.add(new RailSegmentLocation( "G4", 24, 23));
//  LeftRailLocations.add(new RailSegmentLocation( "G5", 23, 15));
//  LeftRailLocations.add(new RailSegmentLocation( "G6", 15, 16));
//
//  LeftRailLocations.add(new RailSegmentLocation( "H1", 14, 4));
//  LeftRailLocations.add(new RailSegmentLocation( "H2", 4, 5));
//  LeftRailLocations.add(new RailSegmentLocation( "H3", 5, 6));
//  LeftRailLocations.add(new RailSegmentLocation( "H4", 6, 7));
//  LeftRailLocations.add(new RailSegmentLocation( "H5", 7, 16));
//  LeftRailLocations.add(new RailSegmentLocation( "H6", 16, 17));
//
//  LeftRailLocations.add(new RailSegmentLocation( "J1", 18, 8));
//  LeftRailLocations.add(new RailSegmentLocation( "J2", 8, 9));
//  LeftRailLocations.add(new RailSegmentLocation( "J3", 9, 18));
//  LeftRailLocations.add(new RailSegmentLocation( "J4", 18, 26));
//  LeftRailLocations.add(new RailSegmentLocation( "J5", 26, 25));
//  LeftRailLocations.add(new RailSegmentLocation( "J6", 25, 17));
//
//  LeftRailLocations.add(new RailSegmentLocation( "K1", 18, 17));
//  LeftRailLocations.add(new RailSegmentLocation( "K2", 17, 8));
//  LeftRailLocations.add(new RailSegmentLocation( "K3", 8, 7));
//  LeftRailLocations.add(new RailSegmentLocation( "K4", 7, 17));
//  LeftRailLocations.add(new RailSegmentLocation( "K5", 17, 26));
//}
//
//void defineRightRail() {
//
//  RightRailLocations = new LinkedList<RailSegmentLocation>();
//  RightRailLocations.add(new RailSegmentLocation( "A2", 4, 3));
//  RightRailLocations.add(new RailSegmentLocation( "A3", 3, 2));
//  RightRailLocations.add(new RailSegmentLocation( "A4", 2, 1));
//  RightRailLocations.add(new RailSegmentLocation( "A5", 1, 0));
//  RightRailLocations.add(new RailSegmentLocation( "A6", 0, 10));
//
//  RightRailLocations.add(new RailSegmentLocation( "B1", 4, 13));
//  RightRailLocations.add(new RailSegmentLocation( "B2", 13, 21));
//  RightRailLocations.add(new RailSegmentLocation( "B3", 21, 12));
//  RightRailLocations.add(new RailSegmentLocation( "B4", 12, 2));
//  RightRailLocations.add(new RailSegmentLocation( "B5", 2, 11));
//  RightRailLocations.add(new RailSegmentLocation( "B6", 11, 19));
//
//  RightRailLocations.add(new RailSegmentLocation( "C1", 14, 13));
//  RightRailLocations.add(new RailSegmentLocation( "C2", 13, 12));
//  RightRailLocations.add(new RailSegmentLocation( "C3", 12, 11));
//  RightRailLocations.add(new RailSegmentLocation( "C4", 11, 10));
//  RightRailLocations.add(new RailSegmentLocation( "C5", 10, 1));
//  RightRailLocations.add(new RailSegmentLocation( "C6", 1, 11));
//
//  RightRailLocations.add(new RailSegmentLocation( "D1", 14, 22));
//  RightRailLocations.add(new RailSegmentLocation( "D2", 22, 13));
//  RightRailLocations.add(new RailSegmentLocation( "D3", 13, 3));
//  RightRailLocations.add(new RailSegmentLocation( "D4", 3, 12));
//  RightRailLocations.add(new RailSegmentLocation( "D5", 12, 20));
//  RightRailLocations.add(new RailSegmentLocation( "D6", 20, 11));
//
//  RightRailLocations.add(new RailSegmentLocation( "E1", 14, 23));
//  RightRailLocations.add(new RailSegmentLocation( "E2", 23, 22));
//  RightRailLocations.add(new RailSegmentLocation( "E3", 22, 21));
//  RightRailLocations.add(new RailSegmentLocation( "E4", 21, 20));
//  RightRailLocations.add(new RailSegmentLocation( "E5", 20, 19));
//  RightRailLocations.add(new RailSegmentLocation( "E6", 19, 10));
//
//  RightRailLocations.add(new RailSegmentLocation( "F1", 14, 15));
//  RightRailLocations.add(new RailSegmentLocation( "F2", 15, 6));
//  RightRailLocations.add(new RailSegmentLocation( "F3", 6, 16));
//  RightRailLocations.add(new RailSegmentLocation( "F4", 16, 25));
//  RightRailLocations.add(new RailSegmentLocation( "F5", 25, 24));
//  RightRailLocations.add(new RailSegmentLocation( "F6", 24, 16));
//
//  RightRailLocations.add(new RailSegmentLocation( "G1", 14, 5));
//  RightRailLocations.add(new RailSegmentLocation( "G2", 5, 15));
//  RightRailLocations.add(new RailSegmentLocation( "G3", 15, 24));
//  RightRailLocations.add(new RailSegmentLocation( "G4", 24, 23));
//  RightRailLocations.add(new RailSegmentLocation( "G5", 23, 15));
//  RightRailLocations.add(new RailSegmentLocation( "G6", 15, 16));
//
//  RightRailLocations.add(new RailSegmentLocation( "H1", 14, 4));
//  RightRailLocations.add(new RailSegmentLocation( "H2", 4, 5));
//  RightRailLocations.add(new RailSegmentLocation( "H3", 5, 6));
//  RightRailLocations.add(new RailSegmentLocation( "H4", 6, 7));
//  RightRailLocations.add(new RailSegmentLocation( "H5", 7, 16));
//  RightRailLocations.add(new RailSegmentLocation( "H6", 16, 17));
//
//  RightRailLocations.add(new RailSegmentLocation( "J1", 18, 8));
//  RightRailLocations.add(new RailSegmentLocation( "J2", 8, 9));
//  RightRailLocations.add(new RailSegmentLocation( "J3", 9, 18));
//  RightRailLocations.add(new RailSegmentLocation( "J4", 18, 26));
//  RightRailLocations.add(new RailSegmentLocation( "J5", 26, 25));
//  RightRailLocations.add(new RailSegmentLocation( "J6", 25, 17));
//
//  RightRailLocations.add(new RailSegmentLocation( "K1", 18, 17));
//  RightRailLocations.add(new RailSegmentLocation( "K2", 17, 8));
//  RightRailLocations.add(new RailSegmentLocation( "K3", 8, 7));
//  RightRailLocations.add(new RailSegmentLocation( "K4", 7, 17));
//  RightRailLocations.add(new RailSegmentLocation( "K5", 17, 26));
//}
//
//
//void defineTrapazoids() {
//  LeftTrapazoidLocations = new LinkedList<TrapazoidSegmentLocation>();
//  LeftTrapazoidLocations.add(new TrapazoidSegmentLocation("LT1", new PVector(10,0), new PVector(53,0))); // X: 0-6, Y: 0-10 Top Left
//  LeftTrapazoidLocations.add(new TrapazoidSegmentLocation("LT2", new PVector(9,1), new PVector(54,1)));
//  LeftTrapazoidLocations.add(new TrapazoidSegmentLocation("LT3", new PVector(8,2), new PVector(55,2)));
//  LeftTrapazoidLocations.add(new TrapazoidSegmentLocation("LT4", new PVector(7,3), new PVector(56,3)));
//  LeftTrapazoidLocations.add(new TrapazoidSegmentLocation("LT5", new PVector(6,4), new PVector(57,4)));
//  LeftTrapazoidLocations.add(new TrapazoidSegmentLocation("LT6", new PVector(5,5), new PVector(58,5)));
//  LeftTrapazoidLocations.add(new TrapazoidSegmentLocation("LT7", new PVector(4,6), new PVector(59,6)));
//  LeftTrapazoidLocations.add(new TrapazoidSegmentLocation("LT8", new PVector(3,7), new PVector(60,7)));
//  LeftTrapazoidLocations.add(new TrapazoidSegmentLocation("LT9", new PVector(2,8), new PVector(61,8)));
//  LeftTrapazoidLocations.add(new TrapazoidSegmentLocation("LT10", new PVector(1,9), new PVector(62,9)));
//  LeftTrapazoidLocations.add(new TrapazoidSegmentLocation("LT11", new PVector(0,10), new PVector(63,10)));
//  
//  LeftTrapazoidSegments = Collections.synchronizedList(new LinkedList<TrapazoidSegment>());
//  LeftTrapazoidSegments.add(new TrapazoidSegment("LT1", BOX4 + 0, 0, 44));
//  LeftTrapazoidSegments.add(new TrapazoidSegment("LT2", BOX4 + 0, 0, 46));
//  LeftTrapazoidSegments.add(new TrapazoidSegment("LT3", BOX4 + 0, 0, 48));
//  LeftTrapazoidSegments.add(new TrapazoidSegment("LT4", BOX4 + 0, 0, 50));
//  LeftTrapazoidSegments.add(new TrapazoidSegment("LT5", BOX4 + 0, 0, 52));
//  LeftTrapazoidSegments.add(new TrapazoidSegment("LT6", BOX4 + 0, 0, 56));
//  LeftTrapazoidSegments.add(new TrapazoidSegment("LT7", BOX4 + 0, 0, 56));
//  LeftTrapazoidSegments.add(new TrapazoidSegment("LT8", BOX4 + 0, 0, 58));
//  LeftTrapazoidSegments.add(new TrapazoidSegment("LT9", BOX4 + 0, 0, 58));
//  LeftTrapazoidSegments.add(new TrapazoidSegment("LT10", BOX4 + 0, 0, 62));
//  LeftTrapazoidSegments.add(new TrapazoidSegment("LT11", BOX4 + 0, 0, 64));
//  
//  
//  CenterTrapazoidLocations = new LinkedList<TrapazoidSegmentLocation>();
//  CenterTrapazoidLocations.add(new TrapazoidSegmentLocation("LT1", new PVector(10,0), new PVector(53,0))); // X: 0-6, Y: 0-10 Top Left
//  CenterTrapazoidLocations.add(new TrapazoidSegmentLocation("LT2", new PVector(9,1), new PVector(54,1)));
//  CenterTrapazoidLocations.add(new TrapazoidSegmentLocation("LT3", new PVector(8,2), new PVector(55,2)));
//  CenterTrapazoidLocations.add(new TrapazoidSegmentLocation("LT4", new PVector(7,3), new PVector(56,3)));
//  CenterTrapazoidLocations.add(new TrapazoidSegmentLocation("LT5", new PVector(6,4), new PVector(57,4)));
//  CenterTrapazoidLocations.add(new TrapazoidSegmentLocation("LT6", new PVector(5,5), new PVector(58,5)));
//  CenterTrapazoidLocations.add(new TrapazoidSegmentLocation("LT7", new PVector(4,6), new PVector(59,6)));
//  CenterTrapazoidLocations.add(new TrapazoidSegmentLocation("LT8", new PVector(3,7), new PVector(60,7)));
//  CenterTrapazoidLocations.add(new TrapazoidSegmentLocation("LT9", new PVector(2,8), new PVector(61,8)));
//  CenterTrapazoidLocations.add(new TrapazoidSegmentLocation("LT10", new PVector(1,9), new PVector(62,9)));
//  CenterTrapazoidLocations.add(new TrapazoidSegmentLocation("LT11", new PVector(0,10), new PVector(63,10)));
//  
//  CenterTrapazoidSegments = Collections.synchronizedList(new LinkedList<TrapazoidSegment>());
//  CenterTrapazoidSegments.add(new TrapazoidSegment("LT1", BOX4 + 0, 0, 44));
//  CenterTrapazoidSegments.add(new TrapazoidSegment("LT2", BOX4 + 0, 0, 46));
//  CenterTrapazoidSegments.add(new TrapazoidSegment("LT3", BOX4 + 0, 0, 48));
//  CenterTrapazoidSegments.add(new TrapazoidSegment("LT4", BOX4 + 0, 0, 50));
//  CenterTrapazoidSegments.add(new TrapazoidSegment("LT5", BOX4 + 0, 0, 52));
//  CenterTrapazoidSegments.add(new TrapazoidSegment("LT6", BOX4 + 0, 0, 56));
//  CenterTrapazoidSegments.add(new TrapazoidSegment("LT7", BOX4 + 0, 0, 56));
//  CenterTrapazoidSegments.add(new TrapazoidSegment("LT8", BOX4 + 0, 0, 58));
//  CenterTrapazoidSegments.add(new TrapazoidSegment("LT9", BOX4 + 0, 0, 58));
//  CenterTrapazoidSegments.add(new TrapazoidSegment("LT10", BOX4 + 0, 0, 62));
//  CenterTrapazoidSegments.add(new TrapazoidSegment("LT11", BOX4 + 0, 0, 64));
//  
//  RightTrapazoidLocations = new LinkedList<TrapazoidSegmentLocation>();
//  RightTrapazoidLocations.add(new TrapazoidSegmentLocation("LT1", new PVector(10,0), new PVector(53,0))); // X: 0-6, Y: 0-10 Top Left
//  RightTrapazoidLocations.add(new TrapazoidSegmentLocation("LT2", new PVector(9,1), new PVector(54,1)));
//  RightTrapazoidLocations.add(new TrapazoidSegmentLocation("LT3", new PVector(8,2), new PVector(55,2)));
//  RightTrapazoidLocations.add(new TrapazoidSegmentLocation("LT4", new PVector(7,3), new PVector(56,3)));
//  RightTrapazoidLocations.add(new TrapazoidSegmentLocation("LT5", new PVector(6,4), new PVector(57,4)));
//  RightTrapazoidLocations.add(new TrapazoidSegmentLocation("LT6", new PVector(5,5), new PVector(58,5)));
//  RightTrapazoidLocations.add(new TrapazoidSegmentLocation("LT7", new PVector(4,6), new PVector(59,6)));
//  RightTrapazoidLocations.add(new TrapazoidSegmentLocation("LT8", new PVector(3,7), new PVector(60,7)));
//  RightTrapazoidLocations.add(new TrapazoidSegmentLocation("LT9", new PVector(2,8), new PVector(61,8)));
//  RightTrapazoidLocations.add(new TrapazoidSegmentLocation("LT10", new PVector(1,9), new PVector(62,9)));
//  RightTrapazoidLocations.add(new TrapazoidSegmentLocation("LT11", new PVector(0,10), new PVector(63,10)));
//  
//  RightTrapazoidSegments = Collections.synchronizedList(new LinkedList<TrapazoidSegment>());
//  RightTrapazoidSegments.add(new TrapazoidSegment("LT1", BOX4 + 0, 0, 44));
//  RightTrapazoidSegments.add(new TrapazoidSegment("LT2", BOX4 + 0, 0, 46));
//  RightTrapazoidSegments.add(new TrapazoidSegment("LT3", BOX4 + 0, 0, 48));
//  RightTrapazoidSegments.add(new TrapazoidSegment("LT4", BOX4 + 0, 0, 50));
//  RightTrapazoidSegments.add(new TrapazoidSegment("LT5", BOX4 + 0, 0, 52));
//  RightTrapazoidSegments.add(new TrapazoidSegment("LT6", BOX4 + 0, 0, 56));
//  RightTrapazoidSegments.add(new TrapazoidSegment("LT7", BOX4 + 0, 0, 56));
//  RightTrapazoidSegments.add(new TrapazoidSegment("LT8", BOX4 + 0, 0, 58));
//  RightTrapazoidSegments.add(new TrapazoidSegment("LT9", BOX4 + 0, 0, 58));
//  RightTrapazoidSegments.add(new TrapazoidSegment("LT10", BOX4 + 0, 0, 62));
//  RightTrapazoidSegments.add(new TrapazoidSegment("LT11", BOX4 + 0, 0, 64));
//  
//  
//}


void defineLeftRail() {
  LeftRailSegments = new LinkedList<Segment>();		     // Name, [ Physical Space    ]  [     2D space     ]
  LeftRailSegments.add(new Segment("A2", BOX1 + 0, 29, 24, 4, 3));   // Name, Strip, Offset, Length, StartPoint, EndPoint
  LeftRailSegments.add(new Segment("A3", BOX1 + 0, 55, 24, 3, 2));
  LeftRailSegments.add(new Segment("A4", BOX1 + 0, 81, 25, 2, 1)); 
  LeftRailSegments.add(new Segment("A5", BOX1 + 0, 107, 25, 1, 0)); 
  LeftRailSegments.add(new Segment("A6", BOX1 + 0, 133, 24, 0, 10));

  LeftRailSegments.add(new Segment("B1", BOX1 + 6, 8, 24, 4, 13));   // Name, Strip, Offset, Length, StartPoint, EndPoint
  LeftRailSegments.add(new Segment("B2", BOX1 + 6, 26, 23, 13, 21));
  LeftRailSegments.add(new Segment("B3", BOX1 + 6, 52, 24, 21, 12)); 
  LeftRailSegments.add(new Segment("B4", BOX1 + 6, 78, 24, 12, 2)); 
  LeftRailSegments.add(new Segment("B5", BOX1 + 6, 104, 24, 2, 11));
  LeftRailSegments.add(new Segment("B6", BOX1 + 6, 130, 24, 11, 19)); 

  LeftRailSegments.add(new Segment("C1", BOX1 + 1, 4, 24, 14, 13));   // Name, Strip, Offset, Length, StartPoint, EndPoint
  LeftRailSegments.add(new Segment("C2", BOX1 + 1, 31, 24, 13, 12));
  LeftRailSegments.add(new Segment("C3", BOX1 + 1, 56, 25, 12, 11)); 
  LeftRailSegments.add(new Segment("C4", BOX1 + 1, 83, 23, 11, 10)); 
  LeftRailSegments.add(new Segment("C5", BOX1 + 1, 110, 23, 10, 1));
  LeftRailSegments.add(new Segment("C6", BOX1 + 1, 138, 23, 1, 11)); 

  LeftRailSegments.add(new Segment("D1", BOX1 + 2, 4, 24, 14, 22));   // Name, Strip, Offset, Length, StartPoint, EndPoint
  LeftRailSegments.add(new Segment("D2", BOX1 + 2, 29, 24, 22, 13));
  LeftRailSegments.add(new Segment("D3", BOX1 + 2, 54, 24, 13, 3)); 
  LeftRailSegments.add(new Segment("D4", BOX1 + 2, 81, 23, 3, 12)); 
  LeftRailSegments.add(new Segment("D5", BOX1 + 2, 107, 24, 12, 20));
  LeftRailSegments.add(new Segment("D6", BOX1 + 2, 132, 24, 20, 11)); 

  LeftRailSegments.add(new Segment("E1", BOX1 + 7, 3, 24, 14, 23));   // Name, Strip, Offset, Length, StartPoint, EndPoint
  LeftRailSegments.add(new Segment("E2", BOX1 + 7, 29, 25, 23, 22));
  LeftRailSegments.add(new Segment("E3", BOX1 + 7, 55, 24, 22, 21)); 
  LeftRailSegments.add(new Segment("E4", BOX1 + 7, 80, 26, 21, 20)); 
  LeftRailSegments.add(new Segment("E5", BOX1 + 7, 107, 25, 20, 19));
  LeftRailSegments.add(new Segment("E6", BOX1 + 7, 132, 23, 19, 10)); 

  LeftRailSegments.add(new Segment("F1", BOX1 + 3, 3, 24, 14, 15));   // Name, Strip, Offset, Length, StartPoint, EndPoint
  LeftRailSegments.add(new Segment("F2", BOX1 + 3, 29, 23, 15, 6));
  LeftRailSegments.add(new Segment("F3", BOX1 + 3, 53, 26, 6, 16));    // F is not mapped in physical space !!
  LeftRailSegments.add(new Segment("F4", BOX1 + 3, 80, 24, 16, 25)); 
  LeftRailSegments.add(new Segment("F5", BOX1 + 3, 107, 23, 25, 24));
  LeftRailSegments.add(new Segment("F6", BOX1 + 3, 132, 24, 24, 16)); 

  LeftRailSegments.add(new Segment("G1", BOX1 + 3, 3, 24, 14, 5));   // Name, Strip, Offset, Length, StartPoint, EndPoint
  LeftRailSegments.add(new Segment("G2", BOX1 + 3, 29, 23, 5, 15));
  LeftRailSegments.add(new Segment("G3", BOX1 + 3, 53, 26, 15, 24));     // G is not mapped in physical space !!
  LeftRailSegments.add(new Segment("G4", BOX1 + 3, 80, 24, 24, 23)); 
  LeftRailSegments.add(new Segment("G5", BOX1 + 3, 107, 23, 23, 15));
  LeftRailSegments.add(new Segment("G6", BOX1 + 3, 132, 24, 15, 16)); 

  LeftRailSegments.add(new Segment("H1", BOX1 + 3, 3, 24, 14, 4));   // Name, Strip, Offset, Length, StartPoint, EndPoint
  LeftRailSegments.add(new Segment("H2", BOX1 + 3, 29, 23, 4, 5));
  LeftRailSegments.add(new Segment("H3", BOX1 + 3, 53, 26, 5, 6)); 
  LeftRailSegments.add(new Segment("H4", BOX1 + 3, 80, 24, 6, 7)); 
  LeftRailSegments.add(new Segment("H5", BOX1 + 3, 107, 23, 7, 16));
  LeftRailSegments.add(new Segment("H6", BOX1 + 3, 132, 24, 16, 17)); 

  LeftRailSegments.add(new Segment("J1", BOX1 + 3, 3, 24, 18, 8));   // Name, Strip, Offset, Length, StartPoint, EndPoint
  LeftRailSegments.add(new Segment("J2", BOX1 + 3, 29, 23, 8, 9));
  LeftRailSegments.add(new Segment("J3", BOX1 + 3, 53, 26, 9, 18));    // J is not mapped in physical space !!
  LeftRailSegments.add(new Segment("J4", BOX1 + 3, 80, 24, 18, 26)); 
  LeftRailSegments.add(new Segment("J5", BOX1 + 3, 107, 23, 26, 25));
  LeftRailSegments.add(new Segment("J6", BOX1 + 3, 132, 24, 25, 17)); 

  LeftRailSegments.add(new Segment("K1", BOX1 + 3, 3, 24, 18, 17));   // Name, Strip, Offset, Length, StartPoint, EndPoint
  LeftRailSegments.add(new Segment("K2", BOX1 + 3, 29, 23, 17, 8));
  LeftRailSegments.add(new Segment("K3", BOX1 + 3, 53, 26, 8, 7));    // K is not mapped in physical space !!
  LeftRailSegments.add(new Segment("K4", BOX1 + 3, 80, 24, 7, 17)); 
  LeftRailSegments.add(new Segment("K5", BOX1 + 3, 107, 23, 17, 26));
}

