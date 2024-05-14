import 'package:flutter/material.dart';

class tapIcon extends StatelessWidget {
  final String image;
  final String title;
  const tapIcon({super.key, required this.image, required this.title});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Card(
      color: Color.fromARGB(255, 255, 255, 255),
      elevation: 3,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Image.asset(
              image,
              width: 200,
              height: 150,
            ),
          ),
          Text(
            title,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
        ],
      ),
    );
  }
}
