import 'package:flutter/material.dart';

class FutureExam extends StatelessWidget {
  const FutureExam({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('data'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            print('start');
            exam1();
          }, child: Text('안녕'),
        ),
      ),

    );
  }
}

Future exam1() async{
  print('3초 딜레이중 . . .');
  Future future = Future.delayed(Duration(seconds: 3));
  future.then((_) => print('끝'));
}