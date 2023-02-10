import 'package:flutter/material.dart';

class MyStatelessW extends StatelessWidget {
  const MyStatelessW({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    int san = 0;
    void kowuu() {
      san++;
      print(san++);
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0Xff000000),
        centerTitle: true,
        title: const Text('StatelessWidget'),
      ),
      body: Center(
        child: Text(
          '$san',
          style: const TextStyle(fontSize: 50),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: kowuu,
        child: const Icon(Icons.add),
      ),
    );
  }
}
