part of hsm;

abstract class LeafState extends State {
  void visit() {
    update();
  }
}
