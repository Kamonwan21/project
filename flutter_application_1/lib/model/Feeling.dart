import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';

class Feeling extends StatefulWidget {
  const Feeling({super.key});

  @override
  State<Feeling> createState() => _FeelingState();
}

class _FeelingState extends State<Feeling> {
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
        title: Text("ความรู้สึก",
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
                speak("โกรธ");
              },
              child: Column(
                children: [
                  Image.asset("images/โกรธ.png", width: 200, height: 150),
                  Text(
                    "โกรธ",
                    style: TextStyle(fontSize: 30, color: Colors.black),
                  ),
                ],
              ),
            ),
            OutlinedButton(
              onPressed: () {
                speak("ง่วง");
              },
              child: Column(
                children: [
                  Image.asset("images/ง่วง.png", width: 200, height: 150),
                  Text(
                    "ง่วง",
                    style: TextStyle(fontSize: 30, color: Colors.black),
                  ),
                ],
              ),
            ),
            OutlinedButton(
              onPressed: () {
                speak("คัน");
              },
              child: Column(
                children: [
                  Image.asset("images/คัน.png", width: 200, height: 150),
                  Text(
                    "คัน",
                    style: TextStyle(fontSize: 30, color: Colors.black),
                  ),
                ],
              ),
            ),
            OutlinedButton(
              onPressed: () {
                speak("กลัว");
              },
              child: Column(
                children: [
                  Image.asset("images/กลัว.png", width: 200, height: 150),
                  Text(
                    "กลัว",
                    style: TextStyle(fontSize: 30, color: Colors.black),
                  ),
                ],
              ),
            ),
            OutlinedButton(
              onPressed: () {
                speak("เศร้า");
              },
              child: Column(
                children: [
                  Image.asset("images/เศร้า.png", width: 200, height: 150),
                  Text(
                    "เศร้า",
                    style: TextStyle(fontSize: 30, color: Colors.black),
                  ),
                ],
              ),
            ),
            OutlinedButton(
              onPressed: () {
                speak("มีความสุข");
              },
              child: Column(
                children: [
                  Image.asset("images/มีความสุข.png", width: 200, height: 150),
                  Text(
                    "มีความสุข",
                    style: TextStyle(fontSize: 30, color: Colors.black),
                  ),
                ],
              ),
            ),
            OutlinedButton(
              onPressed: () {
                speak("หนาว");
              },
              child: Column(
                children: [
                  Image.asset("images/หนาว.png", width: 200, height: 150),
                  Text(
                    "หนาว",
                    style: TextStyle(fontSize: 30, color: Colors.black),
                  ),
                ],
              ),
            ),
            OutlinedButton(
              onPressed: () {
                speak("ร้อน");
              },
              child: Column(
                children: [
                  Image.asset("images/ร้อน.png", width: 200, height: 150),
                  Text(
                    "ร้อน",
                    style: TextStyle(fontSize: 30, color: Colors.black),
                  ),
                ],
              ),
            ),
            OutlinedButton(
              onPressed: () {
                speak("เครียด");
              },
              child: Column(
                children: [
                  Image.asset("images/เครียด.png", width: 200, height: 150),
                  Text(
                    "เครียด",
                    style: TextStyle(fontSize: 30, color: Colors.black),
                  ),
                ],
              ),
            ),
            OutlinedButton(
              onPressed: () {
                speak("เบื่อ");
              },
              child: Column(
                children: [
                  Image.asset("images/เบื่อ.png", width: 200, height: 150),
                  Text(
                    "เบื่อ",
                    style: TextStyle(fontSize: 30, color: Colors.black),
                  ),
                ],
              ),
            ),
            OutlinedButton(
              onPressed: () {
                speak("ตกใจ");
              },
              child: Column(
                children: [
                  Image.asset("images/ตกใจ.png", width: 200, height: 150),
                  Text(
                    "ตกใจ",
                    style: TextStyle(fontSize: 30, color: Colors.black),
                  ),
                ],
              ),
            ),
            OutlinedButton(
              onPressed: () {
                speak("ปวด");
              },
              child: Column(
                children: [
                  Image.asset("images/ปวด.png", width: 200, height: 150),
                  Text(
                    "ปวด",
                    style: TextStyle(fontSize: 30, color: Colors.black),
                  ),
                ],
              ),
            ),
            OutlinedButton(
              onPressed: () {
                speak("หิว");
              },
              child: Column(
                children: [
                  Image.asset("images/หิว.png", width: 200, height: 150),
                  Text(
                    "หิว",
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
