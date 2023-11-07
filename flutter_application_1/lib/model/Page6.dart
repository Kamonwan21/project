import 'package:flutter/material.dart';

class Page6 extends StatefulWidget {
  const Page6({super.key});

  @override
  State<Page6> createState() => _Page6State();
}

class _Page6State extends State<Page6> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("บุคคล",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      body: Center(),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            // Navigator.of(context).push(
            //       MaterialPageRoute(builder: (context) => Page7()),
            //     );
          },
          child: Icon(Icons.add),
          backgroundColor: Colors.green),
    );
  }
}
