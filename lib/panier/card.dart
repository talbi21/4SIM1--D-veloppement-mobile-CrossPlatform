import 'package:flutter/material.dart';

class card extends StatelessWidget {
  // const card({ Key? key }) : super(key: key);

  final String _image;
  final int _price;

  card(this._image, this._price);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: Card(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Icon(
              Icons.restore_from_trash_rounded,
              size: 30,
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(15, 10, 15, 10),
              child: Image.asset(_image, width: 155, height: 58),
            ),
            Text(
              _price.toString() + " TND",
              textScaleFactor: 2,
            ),
          ],
        ),
      ),
    );
  }
}
