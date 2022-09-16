void main() {
  /* 알고리즘 문제풀이  N, M 두 숫자가 짝수와 홀수의 쌍이면 "YES", 그렇지 않으면 "NO"를 출력합니다.

끝에 줄 바꿈을 넣고 불필요한 문자나 빈 행을 포함하지 마십시오 */
  print(solution(13, 25));
  // No
  print(solution(24, 12));
  // No
  print(solution(13, 24));
  // Yes
}

String solution(int n, int m) {
  if ((n + m) % 2 == 0) {
    return 'NO';
  } else {
    return 'YES';
  }
}
