void main() {
  print(solve(10, 20)); // 20
  print(solve(3, 3)); //  eq
  print(solve(20, 10));

}

String solve (int a, int b) {
  if (a == b) {
    return 'eq';
  } else if (a > b) {
    return a.toString();
  } else {
    return b.toString();
  }
}