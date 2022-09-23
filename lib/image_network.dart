import 'package:flutter/material.dart';

class ImageNetworkPage extends StatelessWidget {
  const ImageNetworkPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Image Network"),
        backgroundColor: Colors.lightGreen,
      ),
      body: Center(
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: Image.network(
                      "https://imgs.search.brave.com/Yl1UvGitfXqeq5DKBH8lakw4Q37zwdr6oxp5Ov4rnsQ/rs:fit:1200:1200:1/g:ce/aHR0cHM6Ly93d3cu/cGl4ZWxzdGFsay5u/ZXQvd3AtY29udGVu/dC91cGxvYWRzLzIw/MTYvMDgvRnVubnkt/UmFuZG9tLVdhbGxw/YXBlci0xLmpwZw"),
                ),
                const SizedBox(
                  width: 5,
                ),
                Expanded(
                  child: Image.network(
                      "https://imgs.search.brave.com/Yl1UvGitfXqeq5DKBH8lakw4Q37zwdr6oxp5Ov4rnsQ/rs:fit:1200:1200:1/g:ce/aHR0cHM6Ly93d3cu/cGl4ZWxzdGFsay5u/ZXQvd3AtY29udGVu/dC91cGxvYWRzLzIw/MTYvMDgvRnVubnkt/UmFuZG9tLVdhbGxw/YXBlci0xLmpwZw"),
                ),
              ],
            ),
            Expanded(
              child: Image.network(
                  "https://imgs.search.brave.com/Yl1UvGitfXqeq5DKBH8lakw4Q37zwdr6oxp5Ov4rnsQ/rs:fit:1200:1200:1/g:ce/aHR0cHM6Ly93d3cu/cGl4ZWxzdGFsay5u/ZXQvd3AtY29udGVu/dC91cGxvYWRzLzIw/MTYvMDgvRnVubnkt/UmFuZG9tLVdhbGxw/YXBlci0xLmpwZw"),
            ),
            Row(
              children: [
                Expanded(
                  child: Image.network(
                      "https://imgs.search.brave.com/Yl1UvGitfXqeq5DKBH8lakw4Q37zwdr6oxp5Ov4rnsQ/rs:fit:1200:1200:1/g:ce/aHR0cHM6Ly93d3cu/cGl4ZWxzdGFsay5u/ZXQvd3AtY29udGVu/dC91cGxvYWRzLzIw/MTYvMDgvRnVubnkt/UmFuZG9tLVdhbGxw/YXBlci0xLmpwZw"),
                ),
                const SizedBox(
                  width: 5,
                ),
                Expanded(
                  child: Image.network(
                      "https://imgs.search.brave.com/Yl1UvGitfXqeq5DKBH8lakw4Q37zwdr6oxp5Ov4rnsQ/rs:fit:1200:1200:1/g:ce/aHR0cHM6Ly93d3cu/cGl4ZWxzdGFsay5u/ZXQvd3AtY29udGVu/dC91cGxvYWRzLzIw/MTYvMDgvRnVubnkt/UmFuZG9tLVdhbGxw/YXBlci0xLmpwZw"),
                ),
              ],
            ),
            Expanded(
              child: Image.network(
                  "https://imgs.search.brave.com/Yl1UvGitfXqeq5DKBH8lakw4Q37zwdr6oxp5Ov4rnsQ/rs:fit:1200:1200:1/g:ce/aHR0cHM6Ly93d3cu/cGl4ZWxzdGFsay5u/ZXQvd3AtY29udGVu/dC91cGxvYWRzLzIw/MTYvMDgvRnVubnkt/UmFuZG9tLVdhbGxw/YXBlci0xLmpwZw"),
            ),
          ],
        ),
      ),
    );
  }
}
