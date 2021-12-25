import 'package:flutter/material.dart';
import 'package:my_pages/screens/drawer.dart';


class mainclasses extends StatelessWidget {
  GlobalKey<ScaffoldState> _scaffoldKEy = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKEy,
      drawer: NavDrawer(),
      backgroundColor: Colors.transparent,
      extendBodyBehindAppBar: true,
      body: Container(
        child: Stack(children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/background.png'), fit: BoxFit.fill),
            ),
          ),
          Positioned(
            top: 20,
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 20.0),
                  child: IconButton(
                      icon: Icon(Icons.menu_rounded,
                          color: Colors.white, size: 40.0),
                      onPressed: () {
                        _scaffoldKEy.currentState!.openDrawer();
                      }),
                ),
                Container(
                  child: Padding(
                    padding: EdgeInsets.only(left: 25.0, top: 21.0),
                    child: Text(
                      "Home - Available classes",
                      style: TextStyle(
                        fontSize: 19,
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Center(
            child: Column(
              children: [
                SizedBox(
                  height: 110.0,
                ),
                Center(
                  child: Stack(children: [
                    Container(
                      width: 200,
                      height: 80,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          border: Border.all(color: Colors.purple)),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: Text(
                          "A315",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.purple,
                              fontSize: 19,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 70.0, top: 35.0),
                      child: Text(
                        " ID: 100 ",
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.purple),
                      ),
                    ),
                  ]),
                ),
                SizedBox(height: 20.0),
                Center(
                  child: Stack(children: [
                    Container(
                      width: 200,
                      height: 80,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          border: Border.all(color: Colors.purple)),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: Text(
                          "A 317",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.purple,
                              fontSize: 19,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 70.0, top: 35.0),
                      child: Text(
                        " ID: 101 ",
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.purple),
                      ),
                    ),
                  ]),
                ),
                SizedBox(height: 20.0),
                Center(
                  child: Stack(children: [
                    Container(
                      width: 200,
                      height: 80,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          border: Border.all(color: Colors.purple)),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: Text(
                          "B 315",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.purple,
                              fontSize: 19,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 70.0, top: 35.0),
                      child: Text(
                        " ID: 102 ",
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.purple),
                      ),
                    ),
                  ]),
                ),
                SizedBox(height: 20.0),
                Center(
                  child: Stack(children: [
                    Container(
                      width: 200,
                      height: 80,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          border: Border.all(color: Colors.purple)),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: Text(
                          "B 317",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.purple,
                              fontSize: 19,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 70.0, top: 35.0),
                      child: Text(
                        " ID: 103 ",
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.purple),
                      ),
                    ),
                  ]),
                ),
                SizedBox(height: 50.0),
                Center(
                  child: OutlinedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/time_class');
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 35.0, vertical: 8),
                      child: Text(
                        'Proceed',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Satisfy'),
                      ),
                    ),
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                            Colors.purple.shade300),
                        shape: MaterialStateProperty.all<OutlinedBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30.0),
                            ))),
                  ),
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}