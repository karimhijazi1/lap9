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
                    icon: Icon((Ionicons.grid)),
                    label: Text("")),
              )
            ],
            title: Row(children: [
              Text("jordan is haven"),
            ]),
          ),
          body: Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(
                      "https://th.bing.com/th/id/R.873f846d2fa20294480a4ca1f5979c8f?rik=Zi11H3Icj%2faYRg&pid=ImgRaw&r=0"),
                  fit: BoxFit.cover),
            ),
            child: GestureDetector(
              onTap: () {},
              child: Center(
                child: ElevatedButton.icon(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return screen3();
                    }));
                  },
                  icon: Icon(Icons.search),
                  label: Text("Discover jordan"),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.purple.shade300),
                ),
              ),
            ),
          ),
        ));
  }
}
