import 'package:flutter/material.dart';
import 'package:my_pages/screens/drawer.dart';



class Bookamphi extends StatelessWidget {
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
                  image: AssetImage('assets/back2.PNG'), fit: BoxFit.fill),
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
                      "Home - Amphi Booking",
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
          Container(
            padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 50.0),
            child: Form(
              child: Column(
                children: <Widget>[
                  SizedBox(height: 100.0),
                  TextFormField(
                    decoration: const InputDecoration(
                        labelText: 'Day (Format:jj-mm-yyyy)'),
                    onChanged: (val) {
                      // setState(() => day = val);
                    },
                  ),
                  SizedBox(height: 15.0),
                  TextFormField(
                    decoration: const InputDecoration(
                        labelText: 'Time (Format: hh:mm)'),
                    onChanged: (val) {
                      // setState(() => time = val);
                    },
                  ),
                  SizedBox(height: 15.0),
                  TextFormField(
                    decoration:
                    const InputDecoration(labelText: 'Duration in hours'),
                    onChanged: (val) {},
                  ),
                  SizedBox(height: 15.0),
                  TextFormField(
                    decoration: const InputDecoration(labelText: "Item's ID"),
                    onChanged: (val) {
                      // setState(() => itemid = val);
                    },
                  ),
                  SizedBox(height: 15.0),
                  TextFormField(
                    decoration: const InputDecoration(labelText: "Password"),
                    onChanged: (val) {
                      // setState(() => itemid = val);
                    },
                    obscureText: true,
                  ),
                  SizedBox(height: 25.0),
                  RaisedButton(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      child: Text(
                          'Book',
                          style: TextStyle(color: Colors.purple,
                              fontFamily: 'Satisfy',fontSize: 25.0)
                      ),
                      onPressed: () async {Navigator.pushNamed(context, '/home');
                        // print(email);
                        // print(password);
                      }),
                ],
              ),
            ),
          ),
        ]),
      ),
    );
  }
}