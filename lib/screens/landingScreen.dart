import 'package:flutter/material.dart';

class LandingScreen extends StatefulWidget {
  const LandingScreen({Key? key}) : super(key: key);

  @override
  State<LandingScreen> createState() => _LandingScreenState();
}

class _LandingScreenState extends State<LandingScreen> {
  @override
  Widget build(BuildContext context) {
    return (Scaffold(
      body: Center(
        child: Column(
          children: const [
            Text("image"),
          ],
        ),
      ),
    ));
  }
}
