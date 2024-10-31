import 'package:flutter/material.dart';

class HomeAcivity extends StatelessWidget {
  HomeAcivity({super.key});

  void mySnackBar(message, context) {
    ScaffoldMessenger.of(context).hideCurrentSnackBar();
    ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text(message)));
  }

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    ButtonStyle buttonStyle = ElevatedButton.styleFrom(
        padding: EdgeInsets.all(20),
        backgroundColor: Color.fromARGB(255, 8, 121, 12),
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.elliptical(40, 50))));

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
        actions: [
          IconButton(
            onPressed: () {
              mySnackBar("Comment running", context);
            },
            icon: Icon(Icons.comment),
          ),
          IconButton(
              onPressed: () {
                mySnackBar("Search running", context);
              },
              icon: Icon(Icons.search)),
          IconButton(
              onPressed: () {
                mySnackBar("Setting running", context);
              },
              icon: Icon(Icons.settings)),
          IconButton(
            onPressed: () {
              mySnackBar("Email running", context);
              scaffoldKey.currentState!.openEndDrawer();
            },
            icon: Icon(Icons.email),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        elevation: 10,
        child: Icon(Icons.add),
        backgroundColor: Color.fromARGB(137, 74, 126, 15),
        onPressed: () {
          mySnackBar("Add running", context);
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: 1,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.contact_mail), label: "Contact"),
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
          ],
          onTap: (int index) {
            if (index == 1) {
              mySnackBar("Home bottom menu", context);
            }
            if (index == 0) {
              mySnackBar("Contact bottom menu", context);
            }
            if (index == 2) {
              mySnackBar("Profile bottom menu", context);
            }
          }),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
                padding: EdgeInsets.all(0),
                child: UserAccountsDrawerHeader(
                  decoration: BoxDecoration(color: (Colors.black)),
                  accountName: Text("Farjana Akter"),
                  accountEmail: Text("farjanasurjo@gmail.com"),
                  currentAccountPicture: Image.network(
                      "https://cdn.iconscout.com/icon/free/png-256/free-flutter-3521432-2944876.png"),
                  // currentAccountPictureSize: Size(40, 70)
                )),
            ListTile(
                leading: Icon(Icons.home),
                title: Text("Home"),
                onTap: () {
                  scaffoldKey.currentState!.closeEndDrawer();

                  mySnackBar("Home", context);
                }),
            ListTile(
                leading: Icon(Icons.contact_mail),
                title: Text("Contact us"),
                onTap: () {
                  mySnackBar("Contact", context);
                }),
            ListTile(
                leading: Icon(Icons.person),
                title: Text("Profile"),
                onTap: () {
                  mySnackBar("Profile", context);
                }),
            ListTile(
                leading: Icon(Icons.phone),
                title: Text("Phone"),
                onTap: () {
                  mySnackBar("Phone", context);
                }),
            ListTile(
                leading: Icon(Icons.rate_review),
                title: Text("Rating"),
                onTap: () {
                  mySnackBar("Rating", context);
                })
          ],
        ),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ElevatedButton(
            onPressed: () {
              mySnackBar("This is Elevated Button", context);
            },
            child: Text('Elevated Button'),
            style: buttonStyle,
          ),
          Container(
              height: 150,
              width: 150,
              child: Image.network(
                  "https://static-cse.canva.com/blob/1149182/tools-feature_image-converter_lead_01_2x.jpg")),
          Container(
              height: 150,
              width: 150,
              child: Image.network(
                  "https://static-cse.canva.com/blob/1149182/tools-feature_image-converter_lead_01_2x.jpg")),
        ],
      ),
    );
  }
}
