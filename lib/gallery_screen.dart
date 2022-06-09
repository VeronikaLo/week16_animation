import 'package:flutter/material.dart';

class GalleryScreen extends StatelessWidget {
  final List<String>? imageUrls;

  // ignore: use_key_in_widget_constructors
  const GalleryScreen(this.imageUrls);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Rabbit\'s guests Animations'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: ListView(
            children: List.generate(
              imageUrls!.length,
              (index) => Card(
                child: SizedBox(
                  height: 200,
                  child: Image.network(imageUrls![index]),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}