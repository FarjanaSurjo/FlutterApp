import 'package:flutter/material.dart';
//import 'package:flutter_app/alert.dart';
import 'package:flutter_app/fragment/alarmFrag.dart';
import 'package:flutter_app/fragment/balanceFrag.dart';
import 'package:flutter_app/fragment/contactFrag.dart';
import 'package:flutter_app/fragment/homeFragment.dart';
import 'package:flutter_app/fragment/messageFrag.dart';
import 'package:flutter_app/fragment/personFrag.dart';
import 'package:flutter_app/fragment/searchFrag.dart';
import 'package:flutter_app/fragment/settingFrag.dart';

main(List<String> args) {
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

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 8,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.amber,
          title: const Text("My Tab Bar"),
          bottom: const TabBar(
            isScrollable: true,
            tabs: [
              Tab(icon: Icon(Icons.home), text: "Home"),
              Tab(icon: Icon(Icons.person), text: "Person"),
              Tab(icon: Icon(Icons.message), text: "Message"),
              Tab(icon: Icon(Icons.balance), text: "Balance"),
              Tab(icon: Icon(Icons.contact_mail), text: "Contact us"),
              Tab(icon: Icon(Icons.alarm), text: "Alarm"),
              Tab(icon: Icon(Icons.search), text: "Search"),
              Tab(icon: Icon(Icons.settings), text: "Setting")
            ],
          ),
        ),
        body: TabBarView(
          children: [
            const HomeFragment(),
            personFrag(),
            messageFrag(),
            balanceFrag(),
            contactFrag(),
            alarmFrag(),
            searchFrag(),
            settingFrag()
          ],
        ),
      ),
    );
  }
}
