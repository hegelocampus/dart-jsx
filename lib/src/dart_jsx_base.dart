// TODO: Put public facing types in this file.

RegExp hexNumber = RegExp(r'^[\da-fA-F]+$');
RegExp decimalNumber = RegExp(r'^\d+$');

const acornDsxMap = <Object, Object>{};

Object getDsxTokens(acorn) {
  var acornDsx = acornDsxMap[acorn];
  return acornDsx;
}

