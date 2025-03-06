import 'package:flutter/material.dart';

class Homescreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Expanded(
              child: Container(
            height: double.infinity,
            color: Colors.green,
          )),
          Expanded(
              child: Container(
            height: double.infinity,
            color: Colors.red,
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    color: Colors.cyan,
                  ),
                  Container(
                    height: 50,
                    width: 50,
                    color: const Color.fromARGB(255, 26, 32, 33),
                  )
                ],
              ),
            ),
          )),
          Expanded(
              child: Container(
            height: double.infinity,
            color: Colors.purpleAccent,
          ))
        ],
      ),
    );
  }
}
