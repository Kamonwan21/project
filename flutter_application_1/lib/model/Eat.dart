import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';

class Eat extends StatefulWidget {
  const Eat({super.key});

  @override
  State<Eat> createState() => _EatState();
}

class _EatState extends State<Eat> {
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
        title: Text(
          "กิน",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
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
                speak("อาหารหลัก");
                // Navigator.of(context).push(
                //   MaterialPageRoute(builder: (context) => page7()),
                // );
              },
              child: Column(
                children: [
                  Image.asset("images/อาหารหลัก.jpeg", width: 100, height: 100),
                  Text(
                    "อาหารหลัก",
                    style: TextStyle(fontSize: 30),
                  ),
                ],
              ),
            ),
            OutlinedButton(
              onPressed: () {
                speak("ขนมหวาน");
                // Navigator.of(context).push(
                //   MaterialPageRoute(builder: (context) => page8()),
                // );
              },
              child: Column(
                children: [
                  Image.asset("images/ขนมหวาน.jpeg", width: 100, height: 100),
                  Text(
                    "ขนมหวาน",
                    style: TextStyle(fontSize: 30),
                  ),
                ],
              ),
            ),
            OutlinedButton(
              onPressed: () {
                speak("เครื่องดื่ม");
                // Navigator.of(context).push(
                //   MaterialPageRoute(builder: (context) => page9()),
                // );
              },
              child: Column(
                children: [
                  Image.asset("images/เครื่องดื่ม.jpeg",
                      width: 100, height: 100),
                  Text(
                    "เครื่องดื่ม",
                    style: TextStyle(fontSize: 30),
                  ),
                ],
              ),
            ),
            OutlinedButton(
              onPressed: () {
                speak("ผัก");
                // Navigator.of(context).push(
                //   MaterialPageRoute(builder: (context) => Page10()),
                // );
              },
              child: Column(
                children: [
                  Image.asset("images/ผัก.jpeg", width: 100, height: 100),
                  Text(
                    "ผัก",
                    style: TextStyle(fontSize: 30),
                  ),
                ],
              ),
            ),
            OutlinedButton(
              onPressed: () {
                speak("ยา");
              },
              child: Column(
                children: [
                  Image.asset("images/ยา.jpeg", width: 100, height: 100),
                  Text(
                    "ยา",
                    style: TextStyle(fontSize: 30),
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
