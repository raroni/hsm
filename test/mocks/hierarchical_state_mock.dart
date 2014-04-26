part of mocks;

class HierarchicalStateMock extends HierarchicalState {
  Function onOnEnter;
  Function onOnExit;
  Function onOnUpdate;
  
  void onEnter() {
    if(onOnEnter != null) onOnEnter();
  }
  
  void onExit() {
    if(onOnExit != null) onOnExit();
  }
  
  void onUpdate() {
    if(onOnUpdate != null) onOnUpdate();
  }
}
