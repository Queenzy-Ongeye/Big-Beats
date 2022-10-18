import 'package:bigbeats/splash.dart';
import 'package:bigbeats/widgets/MusicList.dart';
import 'package:bigbeats/widgets/PlayList.dart';
import 'package:bigbeats/widgets/PlayListPage.dart';
import 'package:flutter/material.dart';

import 'HomePage.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes:{
        "/": (context) => Splash(),
        "musicPage" : (context) => MusicList(),
        "playListPage" : (context) => PlayListPage(),

      }
    );
  }
}

