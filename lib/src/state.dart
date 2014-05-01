part of hsm;

class State {
  List<Transition> transitions = new List<Transition>();
  
  void addTransition(Transition transition) {
    transitions.add(transition);
  }
  
  void update() {
    onUpdate();
  }
  
  void enter() {
    for(var transition in transitions) {
      transition.onEnter();
    }
    onEnter();
  }
  
  void exit() {
    for(var transition in transitions) {
      transition.onExit();
    }
    onExit();
  }
  
  void onEnter() {
    
  }
  
  void onExit() {
    
  }
  
  void onUpdate() {
    
  }
}
