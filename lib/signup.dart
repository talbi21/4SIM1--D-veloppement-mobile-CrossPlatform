import 'package:flutter/material.dart';

class Signup extends StatefulWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  late String? username;
  late String? email;
  late String? password;
  late String? birth;
  late String? address;

  final keyForm = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Inscription"),
      ),
      body: Form(
        key: keyForm,
        child: ListView(
          children: [
            Container(
                width: double.infinity,
                margin: const EdgeInsets.fromLTRB(20, 0, 20, 10),
                child: Image.asset("assets/images/minecraft.jpg",
                    width: 460, height: 215)),
            Container(
              margin: const EdgeInsets.fromLTRB(10, 0, 10, 10),
              child: TextFormField(
                decoration: const InputDecoration(
                    border: OutlineInputBorder(), labelText: "Username"),
                onSaved: (String? value) {
                  username = value;
                },
                validator: (value) {
                  if (value!.isEmpty || value.length < 5) {
                    return "Username doit contenir au moins 5 caracteres ";
                  }
                },
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(10, 0, 10, 10),
              child: TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(), labelText: "Email"),
                  onSaved: (String? value) {
                    email = value;
                  },
                  validator: (value) {
                    RegExp regex = RegExp(
                        r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
                    if (value!.isEmpty || !regex.hasMatch(value)) {
                      return "Email doit etre valide ";
                    }
                  }),
            ),
            Container(
                margin: const EdgeInsets.fromLTRB(10, 0, 10, 10),
                child: TextFormField(
                    obscureText: true,
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: "Mot de passe"),
                    onSaved: (String? value) {
                      password = value;
                    },
                    validator: (value) {
                      if (value!.isEmpty || value.length < 5) {
                        return "Password doit contenir au moins 5 caracteres ";
                      }
                    })),
            Container(
              margin: const EdgeInsets.fromLTRB(10, 0, 10, 10),
              child: TextFormField(
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "Année de naissance"),
                  onSaved: (String? value) {
                    birth = value;
                  },
                  validator: (value) {
                    if (value!.isEmpty || int.parse(value) > 2021) {
                      return "La date doit etre valide";
                    }
                  }),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(10, 0, 10, 20),
              child: TextFormField(
                  maxLines: 4,
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "Adresse de facturation"),
                  onSaved: (String? value) {
                    address = value;
                  },
                  validator: (value) {
                    if (value!.isEmpty || value.length < 10) {
                      return "Ladresse doit contenir au moins 10 caracteres ";
                    }
                  }),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  child: const Text("S'inscrire"),
                  onPressed: () {
                    //   if(username!.isEmpty && username!.length<5)
                    if (keyForm.currentState!.validate()) {
                      keyForm.currentState!.save();
                      String message = "username + " +
                          username! +
                          "\n email : " +
                          email! +
                          "\n password : " +
                          password! +
                          "\n annee de naissance : " +
                          birth! +
                          "\n adresse :" +
                          address!;
                      showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              title: const Text("Informations"),
                              content: Text(message),
                            );
                          });
                    }
                  },
                ),
                const SizedBox(
                  width: 20,
                ),
                ElevatedButton(
                  child: const Text("Annuler"),
                  onPressed: () {},
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
