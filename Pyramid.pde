class Pyramid {

  private List<Trapazoid> traps;

  Pyramid(List<Trapazoid> its_a_trap) {
    traps = its_a_trap;
  }
  
  void draw() {
    for (Trapazoid trap : traps) {
      trap.draw();
    } 
  }
}

