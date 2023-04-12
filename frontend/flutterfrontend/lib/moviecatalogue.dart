import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class TheMovieCatalogue extends StatelessWidget {
  const TheMovieCatalogue({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Base ya Movie',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.brown
      ),
      home: const Scaffold(),
    );
  }
}