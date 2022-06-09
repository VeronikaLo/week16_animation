import 'package:flutter/material.dart';
import 'package:week16_animation/gallery_screen.dart';

class SimpleSection extends StatefulWidget {
  final List<String>? imageUrls;

  // ignore: use_key_in_widget_constructors
  const SimpleSection({
    required this.imageUrls,
  });

  @override
  State<SimpleSection> createState() => _SimpleSectionState();
}

class _SimpleSectionState extends State<SimpleSection> {
  bool show = false;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                OutlinedButton(
                  onPressed: () {
                    setState(() {
                      show = !show;
                    });
                  },
                  child: Text(show ? 'Hide Guest' : 'Show Guest'),
                ),
                OutlinedButton(
                  child: const Text('Show Gallery'),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => GalleryScreen(widget.imageUrls),
                      ),
                    );
                  },
                ),
              ],
            ),
            SizedBox(
              height: show ? 150 : 0,
              width: 150,
              child: Image.network(widget.imageUrls![0]),
            ),
          ],
        ),
      ),
    );
  }
}