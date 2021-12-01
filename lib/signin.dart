import 'package:flutter/material.dart';
import 'package:gstore4sim1/signup.dart';
import 'package:gstore4sim1/resetPassword.dart';

class Signin extends StatefulWidget {
  const Signin({Key? key}) : super(key: key);

  @override
  State<Signin> createState() => _SigninState();
}

class _SigninState extends State<Signin> {
  late String? _username;
  late String? _password;

  final GlobalKey<FormState> _keyForm = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("S'authentifier"),
      ),
      body: Form(
        key: _keyForm,
        child: ListView(
          children: [
            Container(
                width: double.infinity,
                margin: const EdgeInsets.fromLTRB(20, 0, 20, 10),
                child: Image.asset("assets/images/minecraft.jpg",
                    width: 460, height: 215)),
            Container(
              margin: const EdgeInsets.fromLTRB(10, 50, 10, 10),
              child: TextFormField(
                decoration: const InputDecoration(
                    border: OutlineInputBorder(), labelText: "Username"),
                onSaved: (String? value) {
                  _username = value;
                },
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return "el username malezmoush ykoun feregh ";
                  } else if (value.length < 5) {
                    return "el username lezem fih aal klila 5 hrouf";
                  } else {
                    return null;
                  }
                },
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(10, 0, 10, 10),
              child: TextFormField(
                  obscureText: true,
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(), labelText: "Mot de passe"),
                  onSaved: (String? value) {
                    _password = value;
                  },
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return "el mdp kifkif zeda malezmoush ykoun feregh ";
                    } else if (value.length < 8) {
                      return "el mdp lezem fih aal klila 5 hrouf";
                    } else {
                      return null;
                    }
                  }),
            ),
            Container(
                margin: const EdgeInsets.fromLTRB(10, 20, 10, 0),
                child: ElevatedButton(
                  child: const Text("S'authentifier"),
                  onPressed: () {
                    if (_keyForm.currentState!.validate()) {
                      _keyForm.currentState!.save();
                    }
                  },
                )),
            Container(
                margin: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.red),
                  ),
                  child: const Text("Créer un compte"),
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, "/signup");
                  },
                )),
            Container(
              margin: const EdgeInsets.fromLTRB(0, 20, 0, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Mot de passe oublié ?"),
                  SizedBox(
                    width: 10,
                  ),
                  GestureDetector(
                    child: const Text("Cliquez ici",
                        style: TextStyle(color: Colors.blue)),
                    onTap: () {
                      Navigator.pushNamed(context, "/resetPassword");
                    },
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
