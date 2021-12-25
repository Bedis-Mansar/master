import 'package:flutter/material.dart';
import 'package:my_pages/screens/drawer.dart';


class TimeTables extends StatelessWidget{
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
                      image: AssetImage('assets/background.png'),
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
                          icon:Icon( Icons.menu_rounded, color: Colors.white, size: 40.0), onPressed:(){
                        _scaffoldKEy.currentState!.openDrawer();
                      }),
                    ),
                    Container(
                      child: Padding(
                        padding:  EdgeInsets.only(left: 25.0, top: 21.0),
                        child: Text(
                          "Time tables",
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
                      child: OutlinedButton.icon(
                        onPressed: (){},

                        icon: Padding(
                          padding: const EdgeInsets.only(left: 35.0 ,top:8.0, bottom: 8.0),
                          child: Icon(Icons.download, color: Colors.purple,),
                        ),
                        label: Padding(
                          padding: const EdgeInsets.only(top:8.0, right: 35.0, bottom: 8.0),
                          child: Text("INDP1",style: TextStyle(color: Colors.purple, fontSize: 19, fontWeight: FontWeight.w600),),
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
                      child: OutlinedButton.icon(
                        onPressed: (){},

                        icon: Padding(
                          padding: const EdgeInsets.only(left: 35.0 ,top:8.0, bottom: 8.0),
                          child: Icon(Icons.download, color: Colors.purple,),
                        ),
                        label: Padding(
                          padding: const EdgeInsets.only(top:8.0, right: 35.0, bottom: 8.0),
                          child: Text("INDP2",style: TextStyle(color: Colors.purple, fontSize: 19, fontWeight: FontWeight.w600),),
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
                      child: OutlinedButton.icon(
                        onPressed: (){},

                        icon: Padding(
                          padding: const EdgeInsets.only(left: 35.0 ,top:8.0, bottom: 8.0),
                          child: Icon(Icons.download, color: Colors.purple,),
                        ),
                        label: Padding(
                          padding: const EdgeInsets.only(top:8.0, right: 35.0, bottom: 8.0),
                          child: Text("INDP3",style: TextStyle(color: Colors.purple, fontSize: 19, fontWeight: FontWeight.w600),),
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