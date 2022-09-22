// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

final Uri Facebook_url = Uri.parse('https://www.facebook.com/Urdon.jannah');
final Uri instagram_url = Uri.parse('https://www.instagram.com/urdon_janna/');
final Uri amman_url = Uri.parse('https://www.jannah.jo/cities/amman');
final Uri petra_url = Uri.parse('https://www.jannah.jo/cities/golden-triangle');
final Uri about_url = Uri.parse('https://www.jannah.jo/');
final Uri twitter_url = Uri.parse('https://twitter.com/Urdon_jannah');
Future<void> Facebook_Function() async {
  if (!await launchUrl(Facebook_url)) {
    throw 'Could not launch $Facebook_url';
  }
}

Future<void> instagram_function() async {
  if (!await launchUrl(instagram_url)) {
    throw 'Could not launch $instagram_url';
  }
}

Future<void> twitter_function() async {
  if (!await launchUrl(twitter_url)) {
    throw 'Could not launch $twitter_url';
  }
}

Future<void> amman_function() async {
  if (!await launchUrl(amman_url)) {
    throw 'Could not launch $amman_url';
  }
}

Future<void> petra_function() async {
  if (!await launchUrl(petra_url)) {
    throw 'Could not launch $petra_url';
  }
}

Future<void> about_function() async {
  if (!await launchUrl(about_url)) {
    throw 'Could not launch $about_url';
  }
}

class URlClass extends StatelessWidget {
  URlClass(
      {required this.myfunction,
      required this.myplatformIcon,
      required this.myplatformSubTitle,
      required this.myplatformTitle,
      this.myimageurl});

  String? myplatformTitle;
  String? myplatformSubTitle;
  String? myimageurl;
  IconData? myplatformIcon;
  Function()? myfunction;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: myfunction,
      child: Column(children: [
        ListTile(
          title: Text("$myplatformTitle"),
          subtitle: Text("$myplatformSubTitle"),
          leading: Icon(myplatformIcon),
          trailing: Container(
              width: 150,
              height: 200,
              child: Image(image: NetworkImage("$myimageurl"))),
        ),
      ]),
    );
  }
}
