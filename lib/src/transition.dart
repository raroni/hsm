part of hsm;

abstract class Transition {
  State target;
  bool get isSatisfied;
  
  Transition(State this.target);
  
  void onEnter() { }
  
  void onExit() { }
}
