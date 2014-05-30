part of guinness;

typedef void SpecRunner(Suite suite);

abstract class SpecVisitor {
  void visitSuite(Suite suite);
  void visitDescribe(Describe describe);
  void visitIt(It it);
}

abstract class Matchers {
  dynamic get config;

  void expect(actual, matcher, {String reason});
  void toEqual(actual, expected);
  void toContain(actual, expected);
  void toBe(actual, expected);
  void toBeA(actual, expected);
  @Deprecated("toThrow() API is going to change to conform with toThrowWith()")
  void toThrow(actual, message);
  void toThrowWith(actual, {Type type, Pattern message});
  void toBeFalsy(actual);
  void toBeTruthy(actual);
  void toBeFalse(actual);
  void toBeTrue(actual);
  void toBeDefined(actual);
  void toBeNull(actual);
  void toBeNotNull(actual);
  void toHaveBeenCalled(actual);
  void toHaveBeenCalledOnce(actual);
  void toHaveBeenCalledWith(actual, [a,b,c,d,e,f]);
  void toHaveBeenCalledOnceWith(actual, [a,b,c,d,e,f]);
  void notToEqual(actual, expected);
  void notToContain(actual, expected);
  void notToBe(actual, expected);
  void notToBeA(actual, expected);
  void toReturnNormally(actual);
  void toBeUndefined(actual);
  void notToHaveBeenCalled(actual);
  void notToHaveBeenCalledWith(actual, [a,b,c,d,e,f]);
}