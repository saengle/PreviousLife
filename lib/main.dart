import 'package:flutter/material.dart';
import 'dart:math';

class PreviousLifeList {
  final String _name;
  final String _image;
  PreviousLifeList(this._name, this._image);
}

final previousList = <PreviousLifeList>[];

void main() {

  previousList.add(PreviousLifeList('김태리',
      'https://img.vogue.co.kr/vogue/2022/05/style_627a16c2b312b.jpeg'));
  previousList.add(PreviousLifeList('곰',
      'https://cphoto.asiae.co.kr/listimglink/6/2017072813523484896_2.png'));
  previousList.add(PreviousLifeList('지렁이',
      'https://mblogthumb-phinf.pstatic.net/20120806_254/netiang00_13442283438676YEUc_JPEG/naver_com_20120806_134455.jpg?type=w2'));
  previousList.add(PreviousLifeList('거북이',
      'https://cdn.thereport.co.kr/news/photo/201904/355_266_4155.jpg'));
  previousList.add(PreviousLifeList('한효주',
      'https://t1.daumcdn.net/movie/0007909f71efba0cfe508d68bb479f7592367730'));
  previousList.add(PreviousLifeList('잠자리',
      'http://news.kbs.co.kr/data/fckeditor/new/image/2022/05/17/332331652749984161.jpg'));
  previousList.add(PreviousLifeList('황제펭귄',
      'http://m.100gom.co.kr/web/product/extra/big/202107/d51ae50fc62f08b528b0e8a43786685a.jpg'));
  previousList.add(PreviousLifeList('햄스터',
      'https://images.mypetlife.co.kr/content/uploads/2019/09/09152804/ricky-kharawala-adK3Vu70DEQ-unsplash.jpg'));

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
//랜덤인트 생성
Random random = new Random();
int randomNumber = random.nextInt(7);

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
              height: 50,
            ),
            SizedBox(
              height: 360,
              child: Column(
                children: [
                  if (setnumber == 0)
                    const Blank()
                  else if (setnumber == 1)
                    Column(
                      children: [
                        SizedBox(height: 130,),
                        const CircularProgressIndicator(
                          strokeWidth: 4,
                          valueColor: AlwaysStoppedAnimation<Color>(Colors.green),
                        ),
                      ],
                    )
                  else
                    const FutureLife()
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
                      randomNumber=random.nextInt(7);
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
            previousList[randomNumber]._image,
            width: 300,
            height: 300,
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(height: 15,),
        Text('당신의 전생은 ${previousList[randomNumber]._name} 입니다.',
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

