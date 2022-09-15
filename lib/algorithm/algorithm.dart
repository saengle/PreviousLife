// 두 숫자 중 더 큰 숫자를 출력하는 함수를 만들기 단, 두 수의 크기가 동일할경우 'eq' 를 출력함.
// void main() {
//   print(solve(10, 20)); // 20
//   print(solve(3, 3)); //  eq
//   print(solve(20, 10)); // 20
// }

String solve(int a, int b) {
  if (a == b) {
    return 'eq';
  } else if (a > b) {
    return a.toString();
  } else {
    return b.toString();
  }
}

void main() {
  // Hello Java,Gino.
  print(solution(['Java', 'Gino']));

  // Hello Alice,Bob,Carol,Dave,Ellen.
  print(solutions(['Alice', 'Bob', 'Carol', 'Dave', 'Ellen']));
}

String solution(List<String> texts) {
  String combinedList = '';
  String hello = 'Hello ';
  for (var i in texts) {
    combinedList = combinedList + i + ',';
  }
  String helloCombined = hello + combinedList;
  return helloCombined.substring(0, helloCombined.length - 1) + '.';
}

String solutions(List<String> texts) {
  final result = texts.fold<String>('Hello ', (prev, next) => '$prev$next,');
  return result.toString().substring(0, result.length - 1) + '.';
}
