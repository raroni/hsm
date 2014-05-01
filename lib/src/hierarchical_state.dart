part of hsm;

class HierarchicalState extends State {
  State currentChild;
  State initialChild;
  List<State> children = new List<State>();
  
  void enter() {
    super.enter();
    enterChildState(initialChild);
  }
  
  void addChild(State child) {
    children.add(child);
  }
  
  void enterChildState(State state) {
    assert(children.contains(state));
    currentChild = state;
    state.enter();
  }
  
  void exit() {
    super.exit();
    exitCurrentChildState();
  }
  
  void exitCurrentChildState() {
    currentChild.exit();
    currentChild = null;
  }
  
  void changeChildState(State child) {
    exitCurrentChildState();
    enterChildState(child);
  }
  
  void update() {
    var satisfiedTransition = getSatisfiedTransition();
    if(satisfiedTransition != null) {
      changeChildState(satisfiedTransition.target);
    }
    super.update();
    currentChild.update();
  }
  
  Transition getSatisfiedTransition() {
    for(var transition in currentChild.transitions) {
      if(transition.isSatisfied) return transition;
    }
    return null;
  }
}
