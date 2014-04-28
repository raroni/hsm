part of mocks;

class TransitionMock extends Transition {
  bool nextIsSatisfied;
  
  TransitionMock(State target, bool this.nextIsSatisfied) : super(target);
  
  bool get isSatisfied => nextIsSatisfied;
}
