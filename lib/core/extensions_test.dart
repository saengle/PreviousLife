import 'package:flutter/material.dart';

extension StringExt on String {
  String last(int n) => substring(length - 1);

  String lastChar() {
    return this[length - 1];
  }


  bool isLetter() {
    return contains(RegExp(r'[A-Za-z]')); // Regular Expression 정규 표현식.
  }



  String dropLast() {
    return substring(0, length - 1);
  }

  int count(bool Function(String ch) function) {
    int check = 0;
    for (int i = 0; i < length; i++) {
      if (function(this[i])) {
        check++;
      }
    }
    return check;
  }


  String take(int n) {
    String result = '';
    result = this.substring(0, n);
    return result;
  }

  String takeLast(int n) {
    if (n > length) {
      return this;
    } else {
      return substring(length - n);
    }
  }


  int takeWhile(bool Function(String ch) function) {
    int check = 0;
    bool start = false;
    for (int i = 0; i < length; i++) {
      if (function(this[i])) {
        check == 1 ? start = true : start = false;
        check++;
      }
    }
    return substring();
  }
}
