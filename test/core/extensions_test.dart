import 'package:flutter_test/flutter_test.dart';
import 'package:grammar_test/core/extensions_test.dart';

void main() {
  const text = '<<<First Grade>>>';
  test('last() 는 마지막 문자를 반환해야 한다', () {
    expect(text.last(1), '>');
  });


  // a, b 문자
  // +, 1 문자 아님
  test('isLetter() 는 한 문자가 글자인지 아닌지 판별한다', () {
    expect(text[0].isLetter(), false);
    expect(text[3].isLetter(), true);
    expect(text[8].isLetter(), true);
    expect(text.last(1).isLetter(), false);
  });

  test('count()는 주어진 조건을 만족하는 개수를 반환한다.', () {
    expect(text.count((ch) => ch == '<'), 3);
    expect(text.count((ch) => ch == '>'), 3);
    expect(text.count((ch) => ch == ' '), 1);
  });

  test('takeWhile(조건)은 조건에 맞는 연속되는 문자열을 앞에서부터 찾아서 반환한다.', () {
    expect(text.takeWhile((ch) => ch == '<'), '<<<');
    expect(text.takeWhile((ch) => ch == '>'), '>>>');
  });
}





