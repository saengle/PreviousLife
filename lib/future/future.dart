import 'package:flutter/material.dart';

class FutureExam extends StatelessWidget {
  const FutureExam({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('data'),
      ),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                print('start');
                exam1();
              },
              child: Text('안녕'),
            ),
            ElevatedButton(
              onPressed: () async {
                print('start');
                exam2();
                await Future.delayed(const Duration(seconds: 1));
                exam2();
                await Future.delayed(const Duration(seconds: 1));
                exam2();
              },
              child: Text('버튼2'),
            ),
            ElevatedButton(
              onPressed: () async {
                print('다운로드 시작');
                await Future.delayed(const Duration(seconds: 1));
                print('초기화 중...');
                await Future.delayed(const Duration(seconds: 1));
                print('핵심 파일 로드 중...');
                await Future.delayed(const Duration(seconds: 3));
                print('다운로드 완료!');
              },
              child: Text('버튼3'),
            ),
            ElevatedButton(
              onPressed: exam4,
              child: Text('버튼4'),
            ),
            ElevatedButton(
              onPressed: exam5,
              child: Text('버튼5'),
            ),
          ],
        ),
    );
  }
}

Future exam1() async {
  print('3초 딜레이중 . . .');
  Future future = Future.delayed(Duration(seconds: 3));
  future.then((_) => print('끝'));
}


Future exam2() async {
  Future future = Future.delayed(Duration(seconds: 0));
  future.then((_) => print('hello'));
}

Future exam4() async{
  var countr = ['5', '4', '3', '2', '1'];
  for (var i = 0; i < countr.length; i++){
    print(countr[i]);
    await Future.delayed(const Duration(seconds: 1));
  }
}

Future exam5() async{

  for (var i = 5; i >= 1 ; i--){
    print(i);
    await Future.delayed(const Duration(seconds: 1));
  }
}
