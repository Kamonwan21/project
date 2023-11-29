import 'package:flutter/material.dart';
import 'package:flutter_application_1/model/Eat.dart';
import 'package:flutter_application_1/model/Family.dart';
import 'package:flutter_application_1/model/Feeling.dart';
import 'package:flutter_application_1/model/Hobby.dart';
import 'package:flutter_application_1/model/Items.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'model/Text.dart';

void main() async {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "APHASIA HELP CARE",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          backgroundColor: Colors.green,
        ),
        body: TextToSpeech(),
      ),
    );
  }
}

class TextToSpeech extends StatefulWidget {
  const TextToSpeech({Key? key}) : super(key: key);

  @override
  _TextToSpeechState createState() => _TextToSpeechState();
}

class _TextToSpeechState extends State<TextToSpeech> {
  final FlutterTts flutterTts = FlutterTts();

  speak(String text) async {
    await flutterTts.setLanguage("th-TH");
    await flutterTts.setPitch(1);
    await flutterTts.speak(text);
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
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
              speak("คำพูด");
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => Speech()),
              );
            },
            child: Column(
              children: [
                Image.asset("images/01.png", width: 200, height: 150),
                Text(
                  " คำพูด",
                  style: TextStyle(fontSize: 30, color: Colors.black),
                ),
              ],
            ),
          ),
          OutlinedButton(
            onPressed: () {
              speak("กิน");
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => Eat()),
              );
            },
            child: Column(
              children: [
                Image.asset("images/02.png", width: 200, height: 150),
                Text(
                  "กิน",
                  style: TextStyle(fontSize: 30, color: Colors.black),
                ),
              ],
            ),
          ),
          OutlinedButton(
            onPressed: () {
              speak("ของใช้");
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => Items()),
              );
            },
            child: Column(
              children: [
                Image.asset("images/04.jpg", width: 200, height: 150),
                Text(
                  "ของใช้",
                  style: TextStyle(fontSize: 30, color: Colors.black),
                ),
              ],
            ),
          ),
          OutlinedButton(
            onPressed: () {
              speak("งานอดิเรก");
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => Hobby()),
              );
            },
            child: Column(
              children: [
                Image.asset("images/05.png", width: 200, height: 150),
                Text(
                  "งานอดิเรก",
                  style: TextStyle(fontSize: 30, color: Colors.black),
                ),
              ],
            ),
          ),
          OutlinedButton(
            onPressed: () {
              speak("ความรู้สึก");
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => Feeling()),
              );
            },
            child: Column(
              children: [
                Image.asset("images/03.png", width: 200, height: 150),
                Text(
                  "ความรู้สึก",
                  style: TextStyle(fontSize: 30, color: Colors.black),
                ),
              ],
            ),
          ),
          OutlinedButton(
            onPressed: () {
              speak("บุคคล");
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => Person()),
              );
            },
            child: Column(
              children: [
                Image.asset("images/06.png", width: 200, height: 150),
                Text(
                  "บุคคล",
                  style: TextStyle(fontSize: 30, color: Colors.black),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
