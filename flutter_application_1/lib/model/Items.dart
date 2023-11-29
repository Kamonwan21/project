import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';

class Items extends StatefulWidget {
  const Items({super.key});

  @override
  State<Items> createState() => _ItemsState();
}

class _ItemsState extends State<Items> {
   final FlutterTts flutterTts = FlutterTts();

  speak(String text) async {
    await flutterTts.setLanguage("th-TH");
    await flutterTts.setPitch(1);
    await flutterTts.speak(text);
  }
  @override
  Widget build(BuildContext context) {
     return Scaffold(
      appBar: AppBar(
        title: Text("ของใช้",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      body: SingleChildScrollView(
        child: GridView.count(
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          physics: NeverScrollableScrollPhysics(),
          crossAxisCount: 2,
          childAspectRatio: 0.9,
          shrinkWrap: true,
          children: [
            OutlinedButton(
              onPressed: () {
                speak("ทีวี");
              },
              child: Column(
                children: [
                  Image.asset("images/ทีวี.jpeg", width: 200, height: 150),
                  Text(
                    "ทีวี",
                    style: TextStyle(fontSize: 30, color: Colors.black),
                  ),
                ],
              ),
            ),
            OutlinedButton(
              onPressed: () {
                speak("จาน");
              },
              child: Column(
                children: [
                  Image.asset("images/จาน.jpeg", width: 200, height: 150),
                  Text(
                    "จาน",
                    style: TextStyle(fontSize: 30, color: Colors.black),
                  ),
                ],
              ),
            ),
            OutlinedButton(
              onPressed: () {
                speak("ช้อน");
              },
              child: Column(
                children: [
                  Image.asset("images/ช้อน.jpeg", width: 200, height: 150),
                  Text(
                    "ช้อน",
                    style: TextStyle(fontSize: 30, color: Colors.black),
                  ),
                ],
              ),
            ),
            OutlinedButton(
              onPressed: () {
                speak("ถ้วย");
              },
              child: Column(
                children: [
                  Image.asset("images/ถ้วย.jpeg", width: 200, height: 150),
                  Text(
                    "ถ้วย",
                    style: TextStyle(fontSize: 30, color: Colors.black),
                  ),
                ],
              ),
            ),
            OutlinedButton(
              onPressed: () {
                speak("พัดลม");
              },
              child: Column(
                children: [
                  Image.asset("images/พัดลม.jpeg", width: 200, height: 150),
                  Text(
                    "พัดลม",
                    style: TextStyle(fontSize: 30, color: Colors.black),
                  ),
                ],
              ),
            ),
            OutlinedButton(
              onPressed: () {
                speak("ไม้เท้า");
              },
              child: Column(
                children: [
                  Image.asset("images/ไม้เท้า.jpeg", width: 200, height: 150),
                  Text(
                    "ไม้เท้า",
                    style: TextStyle(fontSize: 30, color: Colors.black),
                  ),
                ],
              ),
            ),
            OutlinedButton(
              onPressed: () {
                speak("สวิตไฟ");
              },
              child: Column(
                children: [
                  Image.asset("images/สวิตไฟ.jpeg", width: 200, height: 150),
                  Text(
                    "สวิตไฟ",
                    style: TextStyle(fontSize: 30, color: Colors.black),
                  ),
                ],
              ),
            ),
            OutlinedButton(
              onPressed: () {
                speak("ส้อม");
              },
              child: Column(
                children: [
                  Image.asset("images/ส้อม.jpeg", width: 200, height: 150),
                  Text(
                    "ส้อม",
                    style: TextStyle(fontSize: 30, color: Colors.black),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      backgroundColor: Colors.white,
    );
  }
}