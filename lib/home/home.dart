import 'package:flutter/material.dart';

import 'product_info.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final List<GameData> games = [];

  final description =
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, "
      "sed do eiusmod tempor incididunt ut "
      "labore et dolore magna aliqua. Ut enim ad minim veniam, "
      "quis nostrud exercitation ullamco laboris nisi ut "
      "aliquip ex ea commodo consequat. Duis aute irure dolor "
      "in reprehenderit in voluptate velit esse cillum dolore "
      "eu fugiat nulla pariatur. Excepteur sint occaecat "
      "cupidatat non proident, sunt in culpa qui officia "
      "deserunt mollit anim id est laborum.";

  @override
  void initState() {
    // TODO: implement initState

    games.add(GameData(
        image: "assets/images/dmc5.jpg",
        title: "Devil May Cry 5",
        price: 200,
        description: description,
        quantity: 3000));
    games.add(GameData(
        image: "assets/images/re8.jpg",
        title: "Resident Evil VIII",
        price: 200,
        description: description,
        quantity: 3000));
    games.add(GameData(
        image: "assets/images/nfs.jpg",
        title: "Need For Speed Heat",
        price: 100,
        description: description,
        quantity: 3000));
    games.add(GameData(
        image: "assets/images/rdr2.jpg",
        title: "Red Dead Redemption II",
        price: 150,
        description: description,
        quantity: 3000));
    games.add(GameData(
        image: "assets/images/fifa.jpg",
        title: "FIFA 22",
        price: 200,
        description: description,
        quantity: 3000));
    games.add(GameData(
        image: "assets/images/minecraft.jpg",
        title: "Minecraft",
        price: 100,
        description: description,
        quantity: 3000));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("G-Store ESPRIT"),
      ),
      body: ListView.builder(
          itemCount: games.length,
          itemBuilder: (context, index) {
            return ProductInfo(
                image: games[index].image,
                title: games[index].title,
                price: games[index].price,
                description: games[index].description,
                quantity: games[index].quantity);
          }),
    );
  }
}

class GameData {
  final String image;
  final String title;
  final int price;
  final String description;
  final int quantity;
  GameData({
    required this.image,
    required this.title,
    required this.price,
    required this.description,
    required this.quantity,
  });

  @override
  String toString() {
    return 'GameData(image: $image, title: $title, price: $price, description: $description, quantity: $quantity)';
  }
}
