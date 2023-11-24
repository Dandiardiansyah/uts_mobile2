import 'package:flutter/material.dart';

class GridScreen extends StatelessWidget {
  const GridScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> images = [
      'images/1.jpg',
      'images/2.jpg',
      'images/3.jpg',
      'images/4.jpg',
      'images/5.jpg',
      'images/6.jpg',
      'images/7.jpg',
      'images/8.jpg',
    ];
    return Scaffold(
      body: Container(
        child: GridView.builder(
            itemCount: 8,
            itemBuilder: (context, index) {
              return Card(
                elevation: 10,
                child: Center(
                  child: Image.asset(images[index]),
                ),
              );
            },
            gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2)),
      ),
    );
  }
}
