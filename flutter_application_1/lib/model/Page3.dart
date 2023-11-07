import 'package:flutter/material.dart';

class Page3 extends StatefulWidget {
  const Page3({super.key});

  @override
  State<Page3> createState() => _Page3State();
}

class _Page3State extends State<Page3> {
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
              onPressed: () {},
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
              onPressed: () {},
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
              onPressed: () {},
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
              onPressed: () {},
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
              onPressed: () {},
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
              onPressed: () {},
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
              onPressed: () {},
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
              onPressed: () {},
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
              onPressed: () {},
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
              onPressed: () {},
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
              onPressed: () {},
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
              onPressed: () {},
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
              onPressed: () {},
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
