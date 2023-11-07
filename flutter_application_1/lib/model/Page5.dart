import 'package:flutter/material.dart';

class Page5 extends StatefulWidget {
  const Page5({super.key});

  @override
  State<Page5> createState() => _Page5State();
}

class _Page5State extends State<Page5> {
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
              onPressed: () {},
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
              onPressed: () {},
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
              onPressed: () {},
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
              onPressed: () {},
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
              onPressed: () {},
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
              onPressed: () {},
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
              onPressed: () {},
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
