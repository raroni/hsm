part of hsm;

class LeafState extends State {
  void enter() {
    onEnter();
  }
  
  void update() {
    onUpdate();
  }
  
  void exit() {
    onExit();
  }
}
