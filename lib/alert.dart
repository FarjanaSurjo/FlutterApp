//import 'dart:ffi';

import 'package:flutter/material.dart';

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
  HomeAcivity({super.key});

  void mySnackBar(message, context) {
    ScaffoldMessenger.of(context).hideCurrentSnackBar();
    ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text(message)));
  }

  myAlertDialog(context) {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return Expanded(
              child: AlertDialog(
            title: Text("Alert!"),
            content: Text("Do you want to Submit now?"),
            actions: [
              TextButton(
                  onPressed: () {
                    mySnackBar("Submitted", context);
                    Navigator.of(context).pop();
                  },
                  child: Text('Yes')),
              TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text("No"))
            ],
          ));
        });
  }

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    ButtonStyle buttonStyle = ElevatedButton.styleFrom(
        backgroundColor: Color.fromARGB(255, 8, 121, 12),
        foregroundColor: Colors.white,
        minimumSize: Size(double.infinity, 60));

    return Scaffold(
        key: scaffoldKey,
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Text("Application"),
          titleSpacing: 0,
          centerTitle: true,
          toolbarHeight: 60,
          toolbarOpacity: 1,
          elevation: 0,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.all(10),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(), labelText: 'First Name'),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(), labelText: 'Last Name'),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(), labelText: 'Email Address'),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: ElevatedButton(
                child: Text("Submit"),
                onPressed: () {
                  myAlertDialog(context);
                },
                style: buttonStyle,
              ),
            )
          ],
        ));
  }
}
