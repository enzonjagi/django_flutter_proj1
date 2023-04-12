import 'dart:ui';
import 'package:flutter/material.dart';

class AppLayout extends StatefulWidget {
  const AppLayout({Key? key}) : super(key: key);

  @override
  State<AppLayout> createState() {
    return _AppLayoutState();
  }
}

class _AppLayoutState extends State<AppLayout> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            "assets/img/bg.jpg",
          ),
          fit: BoxFit.cover
        ),
      ),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 20.0, sigmaY: 20.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 300,
              child: Column(),
              color: Colors.indigo.withOpacity(0.95),
            ),
            Expanded(
              child: Column(
                children: [
                  Container(
                    height: 120,
                    color: Colors.indigo.withOpacity(0.80),
                    child: Row(),
                  ),
                  Container(
                    height: 120,
                    color: Colors.deepPurple.withOpacity(0.60),
                    child: Row(),
                  ),
                  const Expanded(
                    child: Center(
                      child: Text("Mzito!!!"),
                    ),
                  )
                ],
              )
            )
          ],
        ),
      ),
    );
  }
}