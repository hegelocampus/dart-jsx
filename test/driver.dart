import "package:test/test.dart";

List tests = <Map<String, Object>>[];

void test(
  String code,
  Map<String, Object>ast,
  Map<String, Object> options,
  Map<String, Object> pluginOptions
) {
  tests.add({'code': code, 'ast': ast, 'options': options, 'pluginOptions': pluginOptions});
}

void testFail(
  String code,
  String message,
  Map<String, Object> options,
  Map<String, Object> pluginOptions
) {
  tests.add({'code': code, 'error': message, 'options': options, 'pluginOptions': pluginOptions});
}

Map<String, Object> stats = {
  "failed": 0,
  "testsRun": 0
};

void log(String title, String mesage) {
}

void report(state, code, message) {
  if (state != "ok") {
    stats["failed"] += 1;
    log(code, message);
  }
  stats["testsRun"]++;
}

void runTests(config, callback) {
}

