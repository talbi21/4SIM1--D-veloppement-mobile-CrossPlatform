import 'package:flutter/material.dart';
import 'package:gstore4sim1/my_games/my_games.dart';
import 'package:gstore4sim1/panier/panier.dart';
import 'package:gstore4sim1/resetPassword.dart';
import 'package:gstore4sim1/signin.dart';
import 'signin.dart';
import 'resetPassword.dart';
import 'signup.dart';
import 'product_details.dart';
import 'home/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'G-Store ESPRIT',
      routes: {
        "/": (BuildContext context) {
          return const Signin();
        },
        "/signup": (BuildContext context) {
          return const Signup();
        },
        "/resetPassword": (BuildContext context) {
          return const resetPassword();
        }
      },
      //home: Home(),
      //home: MyGames(),
      //home: Signin(),
      // home: ProductDetails(
      //     image: "assets/images/dmc5.jpg",
      //     title: "Devil May Cry 5",
      //     description:
      //         "Lorem ipsum dolor sit amet, consectetur adipiscing elit, "
      //         "sed do eiusmod tempor incididunt ut "
      //         "labore et dolore magna aliqua. Ut enim ad minim veniam, "
      //         "quis nostrud exercitation ullamco laboris nisi ut "
      //         "aliquip ex ea commodo consequat. Duis aute irure dolor "
      //         "in reprehenderit in voluptate velit esse cillum dolore "
      //         "eu fugiat nulla pariatur. Excepteur sint occaecat "
      //         "cupidatat non proident, sunt in culpa qui officia "
      //         "deserunt mollit anim id est laborum.",
      //     price: 200,
      //     quantity: 3000)
    );
  }
}
