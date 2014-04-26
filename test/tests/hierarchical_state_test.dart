library a_star_search_test;

import 'package:unittest/unittest.dart';
import '../mocks.dart';

main() {
  test("enter", () {
    var events = new List<String>();
    var parent = new HierarchicalStateMock();
    parent.onOnEnter = () => events.add('parent-enter');
    
    var child1 = new StateMock();
    child1.onOnEnter = () => events.add('child1-enter');
    parent.addChild(child1);
    
    var child2 = new StateMock();
    child2.onOnEnter = () => events.add('child2-enter');
    parent.addChild(child2);
    
    parent.initialChild = child1;
    parent.enter();
    
    expect(events, ['parent-enter', 'child1-enter']);
  });
  
  test("transition", () {
    var events = new List<String>();
    var parent = new HierarchicalStateMock();
    parent.onOnUpdate = () => events.add('parent-update');
    
    var child1 = new StateMock();
    child1.onOnEnter = () => events.add('child1-enter');
    child1.onOnExit = () => events.add('child1-exit');
    child1.onOnUpdate = () => events.add('child1-update');
    parent.addChild(child1);
    
    var child2 = new StateMock();
    child2.onOnEnter = () => events.add('child2-enter');
    child2.onOnExit = () => events.add('child2-exit');
    child2.onOnUpdate= () => events.add('child2-update');
    parent.addChild(child2);
    
    var transition = new TransitionMock(child2, true);
    child1.addTransition(transition);
    
    parent.initialChild = child1;
    
    parent.enter();
    events.clear();
    
    parent.update();
    
    expect(events, ['child1-exit', 'child2-enter', 'parent-update', 'child2-update']);
  });
}
