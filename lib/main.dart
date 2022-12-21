// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'home_screen.dart';

void main() {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        // вот эта аутентификация это стейтфул виджет
        body: const Authentification(),
      ),
    );
  }
}

class Authentification extends StatefulWidget {
  const Authentification({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _AuthState();
  }
}

class _AuthState extends State<Authentification> {
  late Icon iconLogin;
  late Icon iconEmail;
  late Icon iconPass;
  late bool obscureLogin;
  late bool obscureEmail;
  late bool obscurePass;

  @override
  void initState() {
    iconLogin = Icon(Icons.visibility_rounded);
    iconEmail = Icon(Icons.visibility_rounded);
    iconPass = Icon(Icons.visibility_rounded);
    obscureLogin = false;
    obscureEmail = false;
    obscurePass = false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          title: Text("ЕРЦ оплата коммунальных услуг"),
          centerTitle: true,
        ),
        body: Center(
          child: Container(
            padding: EdgeInsets.all(16),
            child: ListView(
              //mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                SizedBox(height: 20),
                Text(
                  "Логин",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                ),
                SizedBox(height: 30),
                TextField(
                  obscureText: obscureLogin,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                        borderSide: BorderSide(color: Colors.grey)),
                    labelText: 'Лицевой счет',
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          if (obscureLogin == true) {
                            obscureLogin = false;
                            iconLogin = Icon(Icons.visibility_rounded);
                          } else {
                            obscureLogin = true;
                            iconLogin = Icon(Icons.visibility_off_rounded);
                          }
                        });
                      },
                      icon: iconLogin,
                    ),
                    suffixIconConstraints:
                        BoxConstraints(maxHeight: 30, maxWidth: 30),
                  ),
                ),
                SizedBox(height: 15),
                Center(
                  child: Text(
                    "или",
                    style: TextStyle(
                      color: Color.fromARGB(255, 36, 162, 135),
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
                SizedBox(height: 15),
                TextField(
                  obscureText: obscureEmail,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50),
                      borderSide: BorderSide(color: Colors.grey),
                    ),
                    labelText: "Электронная почта",
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          if (obscureEmail == true) {
                            obscureEmail = false;
                            iconEmail = Icon(Icons.visibility_rounded);
                          } else {
                            obscureEmail = true;
                            iconEmail = Icon(Icons.visibility_off_rounded);
                          }
                        });
                      },
                      icon: iconEmail,
                    ),
                    suffixIconConstraints:
                        BoxConstraints(maxHeight: 30, maxWidth: 30),
                  ),
                ),
                SizedBox(height: 30),
                Text(
                  "Пароль",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                ),
                SizedBox(height: 30),
                TextField(
                  obscureText: obscurePass,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50),
                      borderSide: BorderSide(color: Colors.grey),
                    ),
                    labelText: "Введите пароль",
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          if (obscurePass == true) {
                            obscurePass = false;
                            iconPass = Icon(Icons.visibility_rounded);
                          } else {
                            obscurePass = true;
                            iconPass = Icon(Icons.visibility_off_rounded);
                          }
                        });
                      },
                      icon: iconPass,
                    ),
                    suffixIconConstraints:
                        BoxConstraints(maxHeight: 30, maxWidth: 30),
                  ),
                ),
                SizedBox(height: 40),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HomeScreen()));
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 43, 184, 177),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 40, vertical: 10),
                      textStyle: const TextStyle(
                          fontSize: 30, fontWeight: FontWeight.bold)),
                  child: const Text('Войти'),
                ),
                TextButton(
                  style: TextButton.styleFrom(
                    textStyle: const TextStyle(fontSize: 20),
                  ),
                  onPressed: () {},
                  child: const Text('Зарегистрироваться'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
