import 'package:flutter/material.dart';
import 'dart:math';

class PreviousLifeList {
  final String name;
  final String image;
  PreviousLifeList(this.name, this.image);
}

void main() {

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const FutureExam5(),
    );
  }
}

class FutureExam5 extends StatefulWidget {
  const FutureExam5({Key? key}) : super(key: key);
  @override
  State<FutureExam5> createState() => _FutureExam5State();
}

class _FutureExam5State extends State<FutureExam5> {
  int count = 0;
  int setNumber = 0;
  int randomNumber = 0;
  Random random = Random();


  final previousList = <PreviousLifeList>[
    PreviousLifeList('김태리',
        'https://img.vogue.co.kr/vogue/2022/05/style_627a16c2b312b.jpeg'),
    PreviousLifeList('곰',
        'https://cphoto.asiae.co.kr/listimglink/6/2017072813523484896_2.png'),
    PreviousLifeList('지렁이',
        'https://mblogthumb-phinf.pstatic.net/20120806_254/netiang00_13442283438676YEUc_JPEG/naver_com_20120806_134455.jpg?type=w2'),
    PreviousLifeList('거북이',
        'https://cdn.thereport.co.kr/news/photo/201904/355_266_4155.jpg'),
    PreviousLifeList('한효주',
        'https://t1.daumcdn.net/movie/0007909f71efba0cfe508d68bb479f7592367730'),
    PreviousLifeList('잠자리',
        'http://news.kbs.co.kr/data/fckeditor/new/image/2022/05/17/332331652749984161.jpg'),
    PreviousLifeList('황제펭귄',
        'http://m.100gom.co.kr/web/product/extra/big/202107/d51ae50fc62f08b528b0e8a43786685a.jpg'),
    PreviousLifeList('햄스터',
        'https://images.mypetlife.co.kr/content/uploads/2019/09/09152804/ricky-kharawala-adK3Vu70DEQ-unsplash.jpg'),
  ];

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
              height: 50,
            ),
            SizedBox(
              height: 360,
              child: Column(
                children: [
                  if (setNumber == 0)
                    const Blank()
                  else if (setNumber == 1)
                    Column(
                      children: const [
                        SizedBox(height: 130,),
                        CircularProgressIndicator(
                          strokeWidth: 4,
                          valueColor: AlwaysStoppedAnimation<Color>(Colors.green),
                        ),
                      ],
                    )
                  else
                     FutureLife(previousList[randomNumber])
                ],
              ),
            ),
            const SizedBox(
              height: 170,
            ),
            Column(
              children: [
                if (count == 0)
                  ElevatedButton(
                    onPressed: () async {
                      setNumber++;
                      setState(() {});
                      print(setNumber);
                      await Future.delayed(const Duration(seconds: 3));
                      count++;
                      setNumber++;
                      setState(() {});
                      print(setNumber);
                    },
                    child: const Text('알아보기'),
                  )
                else
                  ElevatedButton(
                    onPressed: () async {
                      randomNumber = random.nextInt(previousList.length);
                      setNumber--;
                      print(setNumber);
                      setState(() {});
                      await Future.delayed(const Duration(seconds: 3));
                      count++;
                      setNumber++;
                      print(setNumber);
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
  final PreviousLifeList previousLifeList;
   FutureLife(this.previousLifeList, {Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(26.0),
          child: Image.network(
            previousLifeList.image,
            width: 300,
            height: 300,
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(height: 15,),
        Text('당신의 전생은 ${previousLifeList.name} 입니다.',
        style: const TextStyle(
          fontSize: 25,
        ),)
      ],
    );
  }
}

class Blank extends StatelessWidget {
  const Blank({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: 300,
      height: 300,
    );
  }
}

