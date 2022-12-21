// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors

import 'package:bills_app/profile.dart';
import 'package:bills_app/stats.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        // вот эта аутентификация это стейтфул виджет
        body: HomeScreenFul(),
      ),
    );
  }
}

class HomeScreenFul extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomeScreenState();
  }
}

class _HomeScreenState extends State<HomeScreenFul> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("200100566"),
        backgroundColor: Color.fromARGB(255, 35, 173, 127),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 35, 173, 127),
              ),
              child: TextButton(
                onPressed: (() {}),
                child: Text(
                  'Меню',
                  style: TextStyle(
                    fontSize: 36,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 0, 0, 0),
                  ),
                ),
              ),
            ),
            TextButton(
              style: ButtonStyle(
                alignment: Alignment.centerLeft,
                padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                  EdgeInsets.only(left: 15),
                ),
              ),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Profile()));
              },
              child: const Text(
                'Профиль',
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.black,
                ),
              ),
            ),
            const Divider(
              height: 2,
              thickness: 3,
              indent: 10,
              endIndent: 10,
              color: Color.fromARGB(255, 9, 87, 40),
            ),
            TextButton(
              style: ButtonStyle(
                alignment: Alignment.centerLeft,
                padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                  EdgeInsets.only(left: 15),
                ),
              ),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Statistics()));
              },
              child: const Text(
                'Статистика',
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.black,
                ),
              ),
            ),
            const Divider(
              height: 2,
              thickness: 3,
              indent: 10,
              endIndent: 10,
              color: Color.fromARGB(255, 9, 87, 40),
            ),
            TextButton(
              style: ButtonStyle(
                alignment: Alignment.centerLeft,
                padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                  EdgeInsets.only(left: 15),
                ),
              ),
              onPressed: () {},
              child: const Text(
                'Справка',
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.black,
                ),
              ),
            ),
            const Divider(
              height: 2,
              thickness: 3,
              indent: 10,
              endIndent: 10,
              color: Color.fromARGB(255, 9, 87, 40),
            ),
            TextButton(
              style: ButtonStyle(
                alignment: Alignment.centerLeft,
                padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                  EdgeInsets.only(left: 15),
                ),
              ),
              onPressed: () {},
              child: const Text(
                'Показания',
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.black,
                ),
              ),
            ),
            const Divider(
              height: 2,
              thickness: 3,
              indent: 10,
              endIndent: 10,
              color: Color.fromARGB(255, 9, 87, 40),
            ),
            TextButton(
              style: ButtonStyle(
                alignment: Alignment.centerLeft,
                padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                  EdgeInsets.only(left: 15),
                ),
              ),
              onPressed: () {},
              child: const Text(
                'Квитанция',
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.black,
                ),
              ),
            ),
            const Divider(
              height: 2,
              thickness: 3,
              indent: 10,
              endIndent: 10,
              color: Color.fromARGB(255, 9, 87, 40),
            ),
          ],
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 255, 255, 255),
              Color.fromARGB(255, 35, 173, 127)
            ],
            begin: const FractionalOffset(0.0, 0.0),
            end: const FractionalOffset(1.1, 1.1),
            stops: [0.0, 0.8],
            tileMode: TileMode.clamp,
          ),
        ),
        child: Center(
          child: Column(
            children: <Widget>[
              SizedBox(height: 200),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 255, 255, 255),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                child: Text(
                  'Показания',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 0, 0, 0),
                  ),
                ),
              ),
              SizedBox(height: 40),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 255, 255, 255),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                child: Text(
                  'Квитанция',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 0, 0, 0),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
