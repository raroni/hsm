part of mocks;

class StateMock extends State {
  Function onOnEnter;
  Function onOnExit;
  Function onOnUpdate;
  
  void enter() {
    if(onOnEnter != null) onOnEnter();
  }
  
  void exit() {
    if(onOnExit != null) onOnExit();
  }
  
  void update() {
    if(onOnUpdate != null) onOnUpdate();
  }
  
  void visit() {
    
  }
}
