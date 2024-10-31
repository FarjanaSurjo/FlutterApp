//import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeAcivity(),
    );
  }
}

class HomeAcivity extends StatelessWidget {
  const HomeAcivity({super.key});

  @override
  Widget build(BuildContext context) {
    ButtonStyle buttonStyle = ElevatedButton.styleFrom(
        backgroundColor: Colors.amberAccent,
        foregroundColor: Colors.black,
        textStyle: TextStyle(fontSize: 20),
        elevation: 10,
        minimumSize: Size(100, 60));
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text("Home"),
        centerTitle: true,
      ),
      body: Row(
        // mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Acivity1()));
            },
            child: Text("Go to Acivity 1"),
            style: buttonStyle,
          ),
          SizedBox(width: 20),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Acivity2()));
            },
            child: Text("Go to Acivity 2"),
            style: buttonStyle,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Acivity3()));
            },
            child: Text("Go to Acivity 3"),
            style: buttonStyle,
          )
        ],
      ),
    );
  }
}

class Acivity1 extends StatelessWidget {
  Acivity1({super.key});

  @override
  Widget build(BuildContext context) {
    ButtonStyle buttonStyle = ElevatedButton.styleFrom(
        backgroundColor: Colors.blueGrey,
        foregroundColor: Colors.white,
        textStyle: TextStyle(fontSize: 20),
        elevation: 10,
        minimumSize: Size(100, 60));

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Acivity 1"),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Acivity2()));
            },
            child: Text("Go to Acivity 2"),
            style: buttonStyle,
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Acivity3()));
              },
              child: Text("Go to Acivity 3"),
              style: buttonStyle),
          ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HomeAcivity()));
              },
              child: Text("Back to Home"),
              style: buttonStyle)
        ],
      ),
    );
  }
}

class Acivity2 extends StatelessWidget {
  Acivity2({super.key});

  @override
  Widget build(BuildContext context) {
    ButtonStyle buttonStyle = ElevatedButton.styleFrom(
        backgroundColor: Color.fromARGB(255, 8, 121, 12),
        foregroundColor: Colors.white,
        textStyle: TextStyle(fontSize: 20),
        elevation: 10,
        minimumSize: Size(100, 60));
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("Acivity 2"),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Acivity1()));
            },
            child: Text("Back to Acivity 1"),
            style: buttonStyle,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Acivity3()));
            },
            child: Text("Go to Acivity 3"),
            style: buttonStyle,
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HomeAcivity()));
              },
              child: Text("Back to Home"),
              style: buttonStyle)
        ],
      ),
    );
  }
}

class Acivity3 extends StatelessWidget {
  Acivity3({super.key});

  @override
  Widget build(BuildContext context) {
    ButtonStyle buttonStyle = ElevatedButton.styleFrom(
        backgroundColor: Color.fromARGB(143, 233, 30, 98),
        foregroundColor: Color.fromARGB(255, 18, 1, 1),
        textStyle: TextStyle(fontSize: 20),
        elevation: 10,
        minimumSize: Size(100, 60));
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        title: Text("Acivity 3"),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Acivity1()));
              },
              child: Text("Back to Acivity 1"),
              style: buttonStyle),
          ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Acivity2()));
              },
              child: Text("Back to Acivity 2"),
              style: buttonStyle),
          ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HomeAcivity()));
              },
              child: Text("Back to Home"),
              style: buttonStyle)
        ],
      ),
    );
  }
}
