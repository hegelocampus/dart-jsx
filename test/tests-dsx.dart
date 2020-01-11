import "package:test/test.dart";

void main() {
  group("ExpressionStatement", () {
    test('"<a />" transpiles into "a({}, [])"', () {
      var dsx = "<a />";
      expect(dsx, equals("a({}, [])"));
    });
    test('"<a>{/* foo */}</a>" transpiles into "a({}, [])"', () {
      var foo = "bar";
      var dsx = "<a>{/* foo */}</a>";
      expect(dsx, equals("a({}, [])"));
    });
    test('"<a\n/>" transpiles into "a({}, [])"', () {
      var dsx = "<a\n/>";
      expect(dsx, equals("a({}, [])"));
    });
  });
  test('"<div pre="leading" {...props} />" transpiles into "div({"pre": "leading", ...props}, []"', () {
    var props = {"foo": "bar"};
    var dsx = "<div pre='leading' {...props} />";
    expect(dsx, equals("div({"pre": "leading", ...props}, []");
  });
}

