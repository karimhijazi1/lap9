// ignore_for_file: unused_import

import 'package:jordan/screens/screen3.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:ionicons/ionicons.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          actions: [
            Center(
              child: ElevatedButton.icon(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return screen3();
                    }));
                  },
                  icon: Icon(Icons.pages),
                  label: Text("discover app")),
            )
          ],
          title: Row(
            children: [Text("Home Page"), Icon(Icons.home)],
          ),
        ),
        body: Center(
          child: Row(
            children: [Text("Weclome to Home Page"), Icon(Icons.home)],
          ),
        ),
      ),
    );
  }
}
