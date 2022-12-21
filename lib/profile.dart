// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors
import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Профиль',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold,),
        ),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 35, 173, 127),
      ),
      body: ProfilePage(),
    );
  }
}

class ProfilePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ProfilePageState();
  }
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 35, 173, 127),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [ Color.fromARGB(255, 255, 255, 255),  Color.fromARGB(255, 35, 173, 127)],
            begin: const FractionalOffset(0.0, 0.0),
            end: const FractionalOffset(1.1, 1.1),
            stops: [0.0, 0.8],
            tileMode: TileMode.clamp,
          ),
        ),
        child: Column(
          children: <Widget>[
            SizedBox(height: 40),
            Center(
              child: Column(
                children: <Widget>[
                  ElevatedButton(
                    onPressed: (() {}),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 16, 79, 62),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 20),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(100),
                      ),
                    ),
                    child: Icon(
                      Icons.person,
                      color: Color.fromARGB(255, 220, 239, 220),
                      size: 150.0,
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  SizedBox(
                    width: 300,
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      shadowColor: Color.fromARGB(255, 7, 69, 39),
                      elevation: 20,
                      child: Padding(
                        padding: EdgeInsets.all(25),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Text(
                              'Иванов Иван Иванович',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(255, 55, 69, 61)),
                            ),
                            const Divider(
                              height: 15,
                              thickness: 2,
                              indent: 5,
                              endIndent: 5,
                              color: Color.fromARGB(255, 96, 201, 138),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              '+7-999-000-00-00',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(255, 55, 69, 61)),
                            ),
                            const Divider(
                              height: 15,
                              thickness: 2,
                              indent: 5,
                              endIndent: 5,
                              color: Color.fromARGB(255, 96, 201, 138),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              '200100566',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(255, 55, 69, 61)),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
