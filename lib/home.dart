import 'package:flutter/material.dart';
import 'dart:math';

class AppHome extends StatefulWidget {
  const AppHome({Key? key}) : super(key: key);

  @override
  State<AppHome> createState() => _AppHomeState();
}

class _AppHomeState extends State<AppHome> {
  var imageNumber = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          children: [
            Expanded(
              child: TextButton(
                onPressed: () {
                  setState(() {
                    imageNumber = Random().nextInt(5) + 1;
                  });
                },
                child: Image.asset('assets/ball$imageNumber.png'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
