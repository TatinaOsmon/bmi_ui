import 'package:flutter/material.dart';

class MystatefulWidget extends StatelessWidget {
  const MystatefulWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0Xff000000),
        centerTitle: true,
        title: const Text('StatefulWidget'),
      ),
    );
  }
}
