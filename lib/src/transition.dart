part of hsm;

abstract class Transition {
  State target;
  bool get isSatisfied;
}
