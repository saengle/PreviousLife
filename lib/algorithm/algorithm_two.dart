// void main() {
//   /* 알고리즘 문제풀이  N, M 두 숫자가 짝수와 홀수의 쌍이면 "YES", 그렇지 않으면 "NO"를 출력합니다.
//
// 끝에 줄 바꿈을 넣고 불필요한 문자나 빈 행을 포함하지 마십시오 */
//   print(solution(13, 25));
//   // No
//   print(solution(24, 12));
//   // No
//   print(solution(13, 24));
//   // Yes
// }
//
// String solution(int n, int m) {
//   if ((n + m) % 2 == 0) {
//     return 'NO';
//   } else {
//     return 'YES';
//   }
// }

//
//
// void main() {
//   /*
//   등차수열 m과 n 을 입력받아 m 이 n 만큼 10개까지 늘어나는 수열을 만드시오.
//    */
//   print(solution(3, 3)); // 3 6 9 12 15 18 21 24 27 30
//
//   print(solution(5, 10)); // 5 15 25 35 45 55 65 75 85 95
//
//   print(solution(1, 3)); // 1 4 7 10 13 16 19 22 25 28
// }
//
//
// String solution(int m, int n) {
//   List<int> result = [];
//   for (int i = 0; i < 10; i++) {
//     result.add(m + (n * i));
//   }
//
//   String realResult = '';
//   for (int i = 0; i < result.length; i++) {
//     if (i == result.length - 1) {
//       realResult += result[i].toString();
//     } else {
//       realResult += result[i].toString() + ' ';  //  += '${result[i]} '
//     }
//   }
//
//   return realResult;
// }
// //
//
// String solution(int c_1, int c_2, int c_3, int c_4) {
//   int result = 15 - (c_1 + c_2 + c_3 + c_4);
//   return result.toString();
// }
// import 'dart:developer';
// import 'dart:io';
// import '';
//
// void main() {
//   // 4자
//   print(solution('4444'));
//   print(solution('3353'));
// }
//
// String solution(String n) {
//   return n.split('').toSet().length == 1 ? n : 'No';
// }

import 'dart:convert';
import 'dart:io';

//https://gravel-pike-705.notion.site/3888a2da668c47b88c2e311a1f5f312d
// 문제풀이
void main() {
  String line = stdin.readLineSync(encoding: utf8)!;

  int a = int.parse(line.split(' ')[0]);
  int b = int.parse(line.split(' ')[1]);
  int R = int.parse(line.split(' ')[2]);

  int N = int.parse(stdin.readLineSync(encoding: utf8)!);

  List<String> result = [];

  for (int i = 0; i < N; i++) {
    String line = stdin.readLineSync(encoding: utf8)!;
    int x = int.parse(line.split(' ')[0]);
    int y = int.parse(line.split(' ')[1]);
    int A = (a - (x)) * (a - (x));
    int B = (b - (y)) * (b - (y));
    bool answer = (A + B >= R * R);
    if (answer) {
      result.add('silent');
    } else {
      result.add('noisy');
    }
  }
  result.forEach(print);
}
