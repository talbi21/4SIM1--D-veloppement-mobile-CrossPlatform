import 'package:flutter/material.dart';
import 'package:gstore4sim1/basket/basket.dart';
import 'package:gstore4sim1/my_games/my_games.dart';
import 'package:gstore4sim1/product_details.dart';
import 'package:gstore4sim1/update_user.dart';

import 'product_info.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final List<GameData> _games = [];

  final String _description =
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, "
      "sed do eiusmod tempor incididunt ut "
      "labore et dolore magna aliqua. Ut enim ad minim veniam, "
      "quis nostrud exercitation ullamco laboris nisi ut "
      "aliquip ex ea commodo consequat. Duis aute irure dolor "
      "in reprehenderit in voluptate velit esse cillum dolore "
      "eu fugiat nulla pariatur. Excepteur sint occaecat "
      "cupidatat non proident, sunt in culpa qui officia ";

  @override
  void initState() {
    _games.add(GameData(
        title: "Devil May Cry 5",
        image: "assets/images/dmc5.jpg",
        description: _description,
        price: 200,
        quantity: 3000));
    _games.add(GameData(
        title: "Resident Evil VIII",
        image: "assets/images/re8.jpg",
        description: _description,
        price: 200,
        quantity: 3000));
    _games.add(GameData(
        title: "Need For Speed Heat",
        image: "assets/images/nfs.jpg",
        description: _description,
        price: 100,
        quantity: 3000));
    _games.add(GameData(
        title: "Red Dead Redemption II",
        image: "assets/images/rdr2.jpg",
        description: _description,
        price: 150,
        quantity: 3000));
    _games.add(GameData(
        title: "FIFA 22",
        image: "assets/images/fifa.jpg",
        description: _description,
        price: 100,
        quantity: 3000));
    _games.add(GameData(
        title: "Minecraft",
        image: "assets/images/minecraft.jpg",
        description: _description,
        price: 200,
        quantity: 3000));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("G-Store ESPRIT"),
          bottom: const TabBar(
            tabs: [
              Tab(icon: Icon(Icons.home_filled)),
              Tab(icon: Icon(Icons.line_style_rounded)),
              Tab(icon: Icon(Icons.shopping_basket_rounded)),
            ],
          ),
        ),
        drawer: Drawer(
          child: ListView(
            // Important: Remove any padding from the ListView.
            padding: EdgeInsets.zero,
            children: [
              const DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
                margin: EdgeInsets.all(0.0),
                child: Text('G-Store ESPRIT'),
              ),
              ListTile(
                title: const Text('Modifier profil'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const UpdateUser()),
                  );
                  //Navigator.pop(context);
                },
              ),
              ListTile(
                title: const Text('Navigation du bas'),
                onTap: () {
                  // Update the state of the app
                  // ...
                  // Then close the drawer
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            ListView.builder(
              itemCount: _games.length,
              itemBuilder: (BuildContext context, int index) {
                return InkWell(
                  /*onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const ProductDetails(
                            _games[index].image,
                            _games[index].title,
                            _games[index].description,
                            _games[index].price,
                            _games[index].quantity)));
                  },*/
                  child: ProductInfo(
                      _games[index].image,
                      _games[index].title,
                      _games[index].description,
                      _games[index].price,
                      _games[index].quantity),
                );
              },
            ),
            const MyGames(),
            const Basket()
          ],
        ),
      ),
    );
  }
}

class GameData {
  final String title;
  final String image;
  final String description;
  final int price;
  final int quantity;
  GameData({
    required this.title,
    required this.image,
    required this.description,
    required this.price,
    required this.quantity,
  });

  @override
  String toString() {
    return 'GameData{title: $title, image: $image, description: $description, price: $price, quantity: $quantity}';
  }
}
