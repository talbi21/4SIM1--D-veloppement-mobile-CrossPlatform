import 'package:flutter/material.dart';

class ProductInfo extends StatelessWidget {
  // const ({ Key? key }) : super(key: key);

  final String _image;
  final String _title;
  final int _price;
  const ProductInfo(this._image, this._title, this._price);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: Card(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
                margin: EdgeInsets.fromLTRB(10, 10, 20, 10),
                child: Image.asset(_image, width: 200, height: 94)),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(_title),
                Text(_price.toString() + "TND", textScaleFactor: 2),
              ],
            )
          ],
        ),
      ),
    );
  }
}
