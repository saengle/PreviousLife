import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';



class FutureExam5 extends StatefulWidget {
  const FutureExam5({Key? key}) : super(key: key);
  @override
  State<FutureExam5> createState() => _FutureExam5State();
}

class _FutureExam5State extends State<FutureExam5> {
  var count = 0;
  var setnumber = 0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('당신의 전생은 ?',
        style: TextStyle(fontSize: 30),),
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 100,
            ),
            Container(
              width: 300,
              height: 300,
              child: Column(
                children: [
                  if (setnumber == 0)
                    const Blank()
                  else if (setnumber == 1)
                    const CircularProgressIndicator(
                      strokeWidth: 4,
                      valueColor: AlwaysStoppedAnimation<Color>(Colors.green),
                    )
                  else
                    const FutureLife()
                ],
              ),
            ),
            const SizedBox(
              height: 200,
            ),
            Column(
              children: [
                if (count == 0)
                  ElevatedButton(
                    onPressed: () async {
                      setnumber++;
                      setState(() {});
                      print(setnumber);
                      await Future.delayed(const Duration(seconds: 3));
                      count++;
                      setnumber++;
                      setState(() {});
                      print(setnumber);
                    },
                    child: const Text('알아보기'),
                  )
                else
                  ElevatedButton(
                    onPressed: () async {
                      setnumber--;
                      print(setnumber);
                      setState(() {});
                      await Future.delayed(const Duration(seconds: 3));
                      count++;
                      setnumber++;
                      print(setnumber);
                      setState(() {});
                    },
                    child: const Text('다시하기'),
                  ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class FutureLife extends StatelessWidget {
  const FutureLife({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(26.0),
            child: Image.network(
              'https://img.vogue.co.kr/vogue/2022/05/style_627a16c2b312b.jpeg',
              width: 300,
              height: 300,
              fit: BoxFit.cover,
            ),
          ),
        ],

    );
  }
}

class Blank extends StatelessWidget {
  const Blank({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 300,
    );
  }
}

