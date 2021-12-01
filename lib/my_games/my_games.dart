import 'package:flutter/material.dart';
import 'package:gstore4sim1/home/home.dart';

import 'my_game_info.dart';

class MyGames extends StatefulWidget {
  const MyGames({Key? key}) : super(key: key);

  @override
  State<MyGames> createState() => _MyGamesState();
}

class _MyGamesState extends State<MyGames> {
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
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Ma bibliothèque"),
      ),
      body: GridView.builder(
          itemCount: games.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisExtent: 120,
              crossAxisSpacing: 5,
              mainAxisSpacing: 5),
          itemBuilder: (context, index) {
            return MyGameInfo(
                image: games[index].image, title: games[index].title);
          }),
    );
  }
}
// MyGameInfo(image: "assets/images/re8.jpg", title: "Resident Evil VIII")