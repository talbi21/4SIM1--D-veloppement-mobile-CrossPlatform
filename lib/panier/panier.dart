import 'package:flutter/material.dart';
import 'card.dart';

class panier extends StatelessWidget {
  const panier({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: const [
              Text(
                "Total : 500 TND",
                textScaleFactor: 1.5,
              )
            ],
          ),
          Container(
              margin: const EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: const Divider(color: Colors.red)),
          Expanded(
            child: ListView(
              children: [
                card("assets/images/dmc5.jpg", 200),
                card("assets/images/re8.jpg", 200),
                card("assets/images/nfs.jpg", 100)
              ],
            ),
          )
        ],
      ),
    );
  }
}
