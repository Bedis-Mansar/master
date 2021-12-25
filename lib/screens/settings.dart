import 'package:flutter/material.dart';
import 'package:my_pages/screens/drawer.dart';

class Settings extends StatelessWidget {
  GlobalKey<ScaffoldState> _scaffoldKEy =  GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      key: _scaffoldKEy,
      extendBodyBehindAppBar: true,

      drawer: NavDrawer(),

      body:Container(
        child:
        Stack(
            children:[
              Container(
                child:
                Stack(
                    children:[
                      Container(
                        decoration:   BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/img.png'),
                              fit: BoxFit.fill
                          ),
                        ),
                      ),
                      Positioned(
                        top: 20,
                        child:Row(
                          children: [
                            Padding(
                              padding:  EdgeInsets.only(left: 20.0),
                              child: IconButton(
                                  icon:Icon(
                                      Icons.menu_rounded,
                                      color: Colors.white,
                                      size: 40.0),
                                  onPressed:(){
                                    _scaffoldKEy.currentState!.openDrawer();
                                  }),
                            ),
                            Container(
                              child: Padding(
                                padding:  EdgeInsets.only(left: 25.0, top: 19.0),
                                child: Text(
                                  "Settings",
                                  style: TextStyle(
                                    fontSize: 19,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),

                          ],

                        ), ),



                      Center(
                        child: Column(
                          children: [

                            Padding(
                              padding: const EdgeInsets.only(left: 160.0,top: 350.0),
                              child: Row(
                                children: [
                                  Text("Username", style: TextStyle(color: Colors.purple[600], fontSize: 19, fontWeight: FontWeight.w600),),
                                  SizedBox(width: 70.0),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 3.0),
                                    child: Text("change",style:TextStyle(color: Colors.purple[500] ),
                                    ),

                                  ),
                                ],
                              ),
                            ),


                            SizedBox(height : 30.0),


                            Padding(
                              padding: const EdgeInsets.only(left: 160.0),
                              child: Row(
                                children: [
                                  Text("Password", style: TextStyle(color: Colors.purple[600], fontSize: 19, fontWeight: FontWeight.w600),),
                                  SizedBox(width: 70.0),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 3.0),
                                    child: Text("change",style:TextStyle(color: Colors.purple[500] ),),
                                  ),
                                ],
                              ),
                            ),


                            SizedBox(height : 30.0),


                            Padding(
                              padding: const EdgeInsets.only(left: 160.0),
                              child: Row(
                                children: [
                                  Text("Notifications", style: TextStyle(color: Colors.purple[600], fontSize: 19, fontWeight: FontWeight.w600),),
                                  SizedBox(width: 70.0),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 3.0),
                                    child: Text("On",style:TextStyle(color: Colors.purple[500] ),),
                                  ),
                                ],
                              ),
                            ),


                            SizedBox(height : 30.0),


                            Padding(
                              padding: const EdgeInsets.only(left: 160.0),
                              child: Row(
                                children: [
                                  Text("Language", style: TextStyle( color:Colors.purple[600] ,fontSize: 19, fontWeight: FontWeight.w600),),
                                  SizedBox(width: 70.0),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 3.0),
                                    child: Text("English",style:TextStyle(color: Colors.purple[500] ),),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),


                    ]),

              ),



            ]),
      ),);
  }
}