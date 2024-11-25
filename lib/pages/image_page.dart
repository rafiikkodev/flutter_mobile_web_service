import 'package:flutter/material.dart';

class ImagePage extends StatefulWidget {
  const ImagePage({super.key});

  @override
  State<ImagePage> createState() => _ImagePageState();
}

class _ImagePageState extends State<ImagePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Image Network & Assets",
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back),
        ),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("Gambar dari internet"),
              ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.network(
                  "https://images.unsplash.com/photo-1607746882042-944635dfe10e",
                  width: 300,
                  height: 300,
                  fit: BoxFit.cover,
                  filterQuality: FilterQuality.medium,
                ),
              ),
              const SizedBox(height: 20),
              const Text("Gambar dari assets"),
              ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.asset(
                  "images/image1.jpg",
                  width: 300,
                  height: 300,
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
