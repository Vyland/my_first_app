import 'package:flutter/material.dart';

class StoreData extends StatelessWidget {
  final String? data;

  // constructor
  const StoreData({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Store Data",
        ),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("ini text dari halaman home: $data"),
          const SizedBox(
            height: 20,
          ),
          MaterialButton(
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: Text("ini alert dialog $data"),
                      actions: [
                        TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: const Text("back"))
                      ],
                    );
                  });
            },
            color: Colors.purple,
            height: 30,
            child: const Text("Show Alert Dialog"),
          )
        ],
      )),
    );
  }
}
