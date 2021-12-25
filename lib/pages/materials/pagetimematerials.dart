import 'package:flutter/material.dart';
import 'package:my_pages/screens/drawer.dart';


class Pagetimematerials extends StatelessWidget {
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
                      "Home - Materials List",
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
                  SizedBox(height: 200.0),
                  TextFormField(
                    decoration: const InputDecoration(labelText: 'Day (Format:jj-mm-yyyy)'),
                    onChanged: (val) {
                      // setState(() => day = val);
                    },
                  ),
                  SizedBox(height: 15.0),
                  TextFormField(
                    decoration: const InputDecoration(labelText: 'Time (Format: hh:mm)'),
                    onChanged: (val) {
                      // setState(() => time = val);
                    },
                  ),
                  SizedBox(height: 15.0),

                  SizedBox(height: 50.0),
                  FlatButton(
                      padding: EdgeInsets.symmetric(
                          horizontal: 50.0, vertical: 20.0),
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      child: Text(
                        'Continue',
                        style: TextStyle(color: Colors.purple,
                            fontFamily: 'Satisfy',fontSize: 25.0),
                      ),
                      onPressed: () async {
                        Navigator.pushNamed(context, '/Bookmat');
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