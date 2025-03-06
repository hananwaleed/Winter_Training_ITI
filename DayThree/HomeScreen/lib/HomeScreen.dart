import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        leading: Icon(Icons.menu),
        title: Text("hello"),
        centerTitle: true,
        actions: [
          Icon(Icons.star),
          IconButton(
              onPressed: () {
                print("hananwaleed");
              },
              icon: Icon(Icons.star))
        ],
      ),
    );
  }
}

void printData() {
  print("true");
}
