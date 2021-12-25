import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/text.dart';
import 'package:my_pages/screens/drawer.dart';


class Help extends StatelessWidget{
  GlobalKey<ScaffoldState> _scaffoldKEy =  GlobalKey<ScaffoldState>();
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple,
      key: _scaffoldKEy,
      extendBodyBehindAppBar: true,
      drawer: NavDrawer(),

      body:Container(
        child:
        Stack(
            children:[
              Container(
                decoration:   BoxDecoration(
                  color: Colors.transparent,
                ),
              ),
              Positioned(
                top: 19,
                child:Row(
                  children: [
                    Padding(
                      padding:  EdgeInsets.only(left: 20.0),
                      child: IconButton(
                          icon:Icon( Icons.menu_rounded, color: Colors.white, size: 40.0), onPressed:(){
                        _scaffoldKEy.currentState!.openDrawer();
                      }),
                    ),
                    Container(
                      child: Padding(
                        padding:  EdgeInsets.only(left: 25.0, top: 21.0),
                        child: Text(
                          "Help",
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



              Positioned(
                left:10.0,
                top: 150.0,
                child: Row( children:[
                  Container(
                    margin: EdgeInsets.all(10.0),
                    height:50,
                    width: 50,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/msg.png'),
                          fit: BoxFit.cover
                      ),
                    ),
                  ),

                  Container(

                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.8),
                      borderRadius: BorderRadius.circular(15),
                    ),

                    child: Padding(padding: EdgeInsets.symmetric(horizontal:30.0, vertical: 20.0),
                      child: Center(child: Text(

                        "Hi! How can I help?  ",
                        style: TextStyle(
                          /*fontWeight: FontWeight.bold,*/
                          color: Colors.purple[300],
                        ),
                      ),
                      ),),
                  ),

                ]),),







              Positioned(
                top: 240.0,
                right: 10.0,
                child:Row( children:[

                  Container(
                    height: 110.0,
                    width: 280.0,

                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.8),
                      borderRadius: BorderRadius.circular(15),

                    ),
                    child: const Padding(
                      padding: EdgeInsets.only(left: 20.0),
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Type your message here! ",

                        ),
                      ),
                    ),
                  ),

                  Container(
                    margin: EdgeInsets.all(15.0),
                    height:50,
                    width: 50,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/msg.png'),
                          fit: BoxFit.cover
                      ),
                    ),
                  ),
                ]),),

              Positioned(
                top:425.0,
                left: 170,
                child:OutlinedButton(
                  onPressed: (){},
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 35.0, vertical: 8),
                    child: Text('Send',
                      style: TextStyle(
                        color: Colors.purple,
                        fontSize: 19,
                        fontWeight: FontWeight.w600,

                      ),),
                  ),
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                      shape: MaterialStateProperty.all<OutlinedBorder>(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ))
                  ),
                ),
              ),



            ]),

      ),




    );
  }


}