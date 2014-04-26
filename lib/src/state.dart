part of hsm;

abstract class State {
  List<Transition> transitions = new List<Transition>();
  
  void addTransition(Transition transition) {
    transitions.add(transition);
  }
  
  void update();
  void enter();
  void exit();
  
  void onEnter() {
    
  }
  
  void onExit() {
    
  }
  
  void onUpdate() {
    
  }
}
