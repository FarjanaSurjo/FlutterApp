//import 'dart:ffi';

import 'package:flutter/material.dart';
//import 'package:flutter_app/alert.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeAcivity(),
    );
  }
}

class HomeAcivity extends StatelessWidget {
  HomeAcivity({super.key});

  var myImgs = [
    {
      "img": "https://cdn-icons-png.flaticon.com/512/1804/1804486.png",
      "title": "img1"
    },
    {
      "img": "https://cdn-icons-png.flaticon.com/512/1804/1804486.png",
      "title": "img2"
    },
    {
      "img": "https://cdn-icons-png.flaticon.com/512/1804/1804486.png",
      "title": "img3"
    },
    {
      "img": "https://cdn-icons-png.flaticon.com/512/1804/1804486.png",
      "title": "img4"
    },
    {
      "img": "https://cdn-icons-png.flaticon.com/512/1804/1804486.png",
      "title": "img5"
    },
    {
      "img": "https://cdn-icons-png.flaticon.com/512/1804/1804486.png",
      "title": "img6"
    },
    {
      "img": "https://cdn-icons-png.flaticon.com/512/1804/1804486.png",
      "title": "img7"
    },
    {
      "img": "https://cdn-icons-png.flaticon.com/512/1804/1804486.png",
      "title": "img8"
    },
    {
      "img": "https://cdn-icons-png.flaticon.com/512/1804/1804486.png",
      "title": "img9"
    },
    {
      "img": "https://cdn-icons-png.flaticon.com/512/1804/1804486.png",
      "title": "img10"
    },
    {
      "img": "https://cdn-icons-png.flaticon.com/512/1804/1804486.png",
      "title": "img11"
    },
    {
      "img": "https://cdn-icons-png.flaticon.com/512/1804/1804486.png",
      "title": "img12"
    },
    {
      "img": "https://cdn-icons-png.flaticon.com/512/1804/1804486.png",
      "title": "img13"
    },
  ];

  mySnackBar(context, msg) {
    return ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text(msg)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List View"),
        backgroundColor: Colors.green,
        centerTitle: true,
        elevation: 0.0,
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3, crossAxisSpacing: 0, childAspectRatio: 1.0),
        itemCount: myImgs.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              mySnackBar(context, myImgs[index]["title"]);
            },
            child: Container(
              margin: EdgeInsets.all(0),
              width: double.infinity,
              height: 400,
              child: Image.network(
                myImgs[index]["img"]!,
                fit: BoxFit.fill,
              ),
            ),
          );
        },
      ),
    );
  }
}
