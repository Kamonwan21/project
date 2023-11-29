import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';

class Hobby extends StatefulWidget {
  const Hobby({super.key});

  @override
  State<Hobby> createState() => _HobbyState();
}

class _HobbyState extends State<Hobby> {
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
        title: Text("งานอดิเรก",
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
                speak("เดินเล่น");
              },
              child: Column(
                children: [
                  Image.asset("images/เดินเล่น.png", width: 200, height: 150),
                  Text(
                    "เดินเล่น",
                    style: TextStyle(fontSize: 30, color: Colors.black),
                  ),
                ],
              ),
            ),
            OutlinedButton(
              onPressed: () {
                speak("วิ่ง");
              },
              child: Column(
                children: [
                  Image.asset("images/วิ่ง.png", width: 200, height: 150),
                  Text(
                    "วิ่ง",
                    style: TextStyle(fontSize: 30, color: Colors.black),
                  ),
                ],
              ),
            ),
            OutlinedButton(
              onPressed: () {
                speak("ปั่นจักรยาน");
              },
              child: Column(
                children: [
                  Image.asset("images/ปั่นจักรยาน.png",
                      width: 200, height: 150),
                  Text(
                    "ปั่นจักรยาน",
                    style: TextStyle(fontSize: 30, color: Colors.black),
                  ),
                ],
              ),
            ),
            OutlinedButton(
              onPressed: () {
                speak("ดูหนัง");
              },
              child: Column(
                children: [
                  Image.asset("images/ดูหนัง.png", width: 200, height: 150),
                  Text(
                    "ดูหนัง",
                    style: TextStyle(fontSize: 30, color: Colors.black),
                  ),
                ],
              ),
            ),
            OutlinedButton(
              onPressed: () {
                speak("ฟังเพลง");
              },
              child: Column(
                children: [
                  Image.asset("images/ฟังเพลง.png", width: 200, height: 150),
                  Text(
                    "ฟังเพลง",
                    style: TextStyle(fontSize: 30, color: Colors.black),
                  ),
                ],
              ),
            ),
            OutlinedButton(
              onPressed: () {
                speak("อ่านหนังสือ");
              },
              child: Column(
                children: [
                  Image.asset("images/อ่านหนังสือ.png",
                      width: 200, height: 150),
                  Text(
                    "อ่านหนังสือ",
                    style: TextStyle(fontSize: 30, color: Colors.black),
                  ),
                ],
              ),
            ),
            OutlinedButton(
              onPressed: () {
                speak("วาดรูป");
              },
              child: Column(
                children: [
                  Image.asset("images/วาดรูป.png", width: 200, height: 150),
                  Text(
                    "วาดรูป",
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
