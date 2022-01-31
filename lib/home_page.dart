import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  //const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var num1, num2, sum, ab = 0;
  final TextEditingController t1 = TextEditingController(text: "0");
  final TextEditingController t2 = TextEditingController(text: "0");
  void funadd() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      if (ab == 1) {
        sum = num1 + num2;
      } else if (ab == 2) {
        sum = num1 - num2;
      } else if (ab == 3) {
        sum = num1 * num2;
      } else if (ab == 4) {
        sum = num1 / num2;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("yogiadiytonathe",),
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
      ),
      body: Container(
        //color: Colors.purple.shade400,
        padding: const EdgeInsets.all(25),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "OUTPUT: $sum",
              style: TextStyle(
                fontSize: 20.0,
                color: Colors.purple,
                fontWeight: FontWeight.bold,
              ),
            ),
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(hintText: "number 1"),
              controller: t1,
            ),
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(hintText: "number 2"),
              controller: t2,
            ),
            Padding(padding: const EdgeInsets.only(top: 20.0)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MaterialButton(
                    child: Text("+"),
                    color: Colors.blueGrey.shade300,
                    onPressed: () {
                      ab=1;
                      funadd();
                    }),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                ),
                MaterialButton(
                    child: Text("-"),
                    color: Colors.blueGrey.shade300,
                    onPressed: () {
                      ab=2;
                      funadd();
                    }),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MaterialButton(
                    child: Text("*"),
                    color: Colors.blueGrey.shade300,
                    onPressed: () {
                      ab=3;
                      funadd();
                    }),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                ),
                MaterialButton(
                    child: Text("/"),
                    color: Colors.blueGrey.shade300,
                    onPressed: () {
                      ab=4;
                      funadd();
                    }),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
