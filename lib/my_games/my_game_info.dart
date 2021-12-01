import 'package:flutter/material.dart';

class MyGameInfo extends StatelessWidget {
  final String image;
  final String title;
  MyGameInfo({
    Key? key,
    required this.image,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: Card(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.fromLTRB(10, 10, 20, 10),
              child: Image.asset(image, width: 155, height: 58),
            ),
            Text(title)
          ],
        ),
      ),
    );
  }
}
