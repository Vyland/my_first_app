import 'package:flutter/material.dart';

class RowPage extends StatelessWidget {
  const RowPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        title: const Text("Row page"),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: const [
            Icon(
              Icons.home,
              size: 50,
              color: Colors.blue,
            ),
            Icon(
              Icons.person,
              size: 50,
              color: Colors.red,
            ),
            Icon(
              Icons.shop,
              size: 50,
              color: Colors.yellow,
            ),
          ],
        ),
      ),
    );
  }
}
