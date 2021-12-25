import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_pages/screens/drawer.dart';



class lists extends StatelessWidget{
  GlobalKey<ScaffoldState> _scaffoldKEy =  GlobalKey<ScaffoldState>();
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKEy,
      backgroundColor: Colors.transparent,

      extendBodyBehindAppBar: true,
      drawer: NavDrawer(),
      body:Container(
        child:
        Stack(
            children:[
              Container(
                decoration:   BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/back2.PNG'),
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
                          icon:Icon( Icons.menu_rounded, color: Colors.white, size: 40.0),
                          onPressed:(){
                            _scaffoldKEy.currentState!.openDrawer();
                          }),
                    ),
                    Container(
                      child: Padding(
                        padding:  EdgeInsets.only(left: 25.0, top: 21.0),
                        child: Text(
                          "Home",
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
                    SizedBox(height : 240.0),
                    Center(
                      child: OutlinedButton(
                        onPressed: (){Navigator.pushNamed(context, '/avclass');},
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 35.0, vertical: 8),
                          child: Text('Class list', style: TextStyle(color: Colors.purple, fontSize: 19, fontWeight: FontWeight.w600),),
                        ),
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                            shape: MaterialStateProperty.all<OutlinedBorder>(RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30.0),
                            ))
                        ),
                      ),),
                    SizedBox(height : 20.0),
                    Center(
                      child: OutlinedButton(
                        onPressed: (){
                          Navigator.pushNamed(context, '/avamphi');
                        },
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 31.0, vertical: 8),
                          child: Text('Amphi list', style: TextStyle(color: Colors.purple, fontSize: 19, fontWeight: FontWeight.w600),),
                        ),
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                            shape: MaterialStateProperty.all<OutlinedBorder>(RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30.0),
                            ))
                        ),
                      ),),
                    SizedBox(height : 20.0),
                    Center(
                      child: OutlinedButton(
                        onPressed: (){
                          Navigator.pushNamed(context, '/avmat');

                        },
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 8),
                          child: Text('Materials list', style: TextStyle(color: Colors.purple, fontSize: 19, fontWeight: FontWeight.w600),),
                        ),
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                            shape: MaterialStateProperty.all<OutlinedBorder>(RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30.0),
                            ))
                        ),
                      ),),







                  ],
                ),
              ),


            ]),

      ),



    );

  }


}