import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  final String successMsg;
  const HomeScreen({
    super.key,
    required this.successMsg,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Hello!!! Encrypted Data is $successMsg."),
      ),
    );
  }
}
