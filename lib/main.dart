import 'package:flutter/material.dart';

import 'ui/ui.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'NeoDeal',
      home: const SplashPage(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.pink),
    );
  }
}
