import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';

class Speech extends StatefulWidget {
  const Speech({super.key});

  @override
  State<Speech> createState() => _SpeechState();
}

class _SpeechState extends State<Speech> {
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
        title: Text("คำพูด",
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
                speak("สวัสดี");
              },
              child: Column(
                children: [
                  Image.asset("images/สวัสดี.jpg", width: 200, height: 150),
                  Text(
                    "สวัสดี",
                    style: TextStyle(fontSize: 30, color: Colors.black),
                  ),
                ],
              ),
            ),
            OutlinedButton(
              onPressed: () {
                speak("ลาก่อน");
              },
              child: Column(
                children: [
                  Image.asset("images/ลาก่อน.png", width: 200, height: 150),
                  Text(
                    "ลาก่อน",
                    style: TextStyle(fontSize: 30, color: Colors.black),
                  ),
                ],
              ),
            ),
            OutlinedButton(
              onPressed: () {
                speak("ขอบคุณ");
              },
              child: Column(
                children: [
                  Image.asset("images/ขอบคุณ.png", width: 200, height: 150),
                  Text(
                    "ขอบคุณ",
                    style: TextStyle(fontSize: 30, color: Colors.black),
                  ),
                ],
              ),
            ),
            OutlinedButton(
              onPressed: () {
                speak("ใช่");
              },
              child: Column(
                children: [
                  Image.asset("images/ใช่.png", width: 200, height: 150),
                  Text(
                    "ใช่",
                    style: TextStyle(fontSize: 30, color: Colors.black),
                  ),
                ],
              ),
            ),
            OutlinedButton(
              onPressed: () {
                speak("ไม่ใช่");
              },
              child: Column(
                children: [
                  Image.asset("images/ไม่ใช่.png", width: 200, height: 150),
                  Text(
                    "ไม่ใช่",
                    style: TextStyle(fontSize: 30, color: Colors.black),
                  ),
                ],
              ),
            ),
            OutlinedButton(
              onPressed: () {
                speak("ไม่เข้าใจ");
              },
              child: Column(
                children: [
                  Image.asset("images/ไม่เข้าใจ.png", width: 200, height: 150),
                  Text(
                    "ไม่เข้าใจ",
                    style: TextStyle(fontSize: 30, color: Colors.black),
                  ),
                ],
              ),
            ),
            OutlinedButton(
              onPressed: () {
                speak("เข้าใจ");
              },
              child: Column(
                children: [
                  Image.asset("images/เข้าใจ.png", width: 200, height: 150),
                  Text(
                    "เข้าใจ",
                    style: TextStyle(fontSize: 30, color: Colors.black),
                  ),
                ],
              ),
            ),
            OutlinedButton(
              onPressed: () {
                speak("กี่โมงแล้ว");
              },
              child: Column(
                children: [
                  Image.asset("images/กี่โมงแล้ว.png", width: 200, height: 150),
                  Text(
                    "กี่โมงแล้ว",
                    style: TextStyle(fontSize: 30, color: Colors.black),
                  ),
                ],
              ),
            ),
            OutlinedButton(
              onPressed: () {
                speak("วันนี้วันอะไร");
              },
              child: Column(
                children: [
                  Image.asset("images/วันอะไร.png", width: 200, height: 150),
                  Text(
                    "วันนี้วันอะไร",
                    style: TextStyle(fontSize: 30, color: Colors.black),
                  ),
                ],
              ),
            ),
            OutlinedButton(
              onPressed: () {
                speak("พูดดังหน่อย");
              },
              child: Column(
                children: [
                  Image.asset("images/พูดดัง.png", width: 200, height: 150),
                  Text(
                    "พูดดังหน่อย",
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
