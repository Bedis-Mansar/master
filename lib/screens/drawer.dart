import 'package:flutter/material.dart';


class NavDrawer extends StatelessWidget {
  const NavDrawer({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(

      child: Container(
        color: Colors.purple[50],
        child: ListView(
          padding: EdgeInsets.all(8.0),
          children: [
            DrawerHeader(child: Stack(
              children: [
                Center(child:
                Container(
                  width:250 ,
                  height: 50,
                  margin:EdgeInsets.only(bottom: 80.0) ,
                  decoration:   BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/SB.png'),
                        fit: BoxFit.fill
                    ),
                  ),
                ),),


                Padding(
                  padding: const EdgeInsets.only(top:60.0),
                  child: Positioned(child:Center(child: Text(
                    "Welcome !", style: TextStyle(fontSize:40, fontFamily: 'Cookie', color: Colors.purple[800]),
                  ),),
                  ),
                ),
              ],
            ),),
            Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:[
                  SizedBox(height: 20.0,),

                  OutlinedButton.icon(
                    onPressed: (){Navigator.pushNamed(context, '/home');},

                    icon: Padding(
                      padding: const EdgeInsets.only(left: 10.0 ,top:8.0, bottom: 8.0),
                      child: Icon(Icons.home, color: Colors.purple,),
                    ),
                    label: Padding(
                      padding: const EdgeInsets.only(top:8.0, bottom: 8.0),
                      child: Text("Home",style: TextStyle(color: Colors.purple, fontSize: 19, fontWeight: FontWeight.w600),),
                    ),

                    style: ButtonStyle(
                      side: MaterialStateProperty.all(BorderSide(color: Colors.transparent)),

                      shape: MaterialStateProperty.all<OutlinedBorder>(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),),
                    ),
                  ),
                  SizedBox(height: 10),
                  OutlinedButton.icon(
                    onPressed: (){},

                    icon: Padding(
                      padding: const EdgeInsets.only(left: 10.0 ,top:8.0, bottom: 8.0),
                      child: Icon(Icons.checklist_rounded, color: Colors.purple,),
                    ),
                    label: Padding(
                      padding: const EdgeInsets.only(top:8.0, bottom: 8.0),
                      child: Text("Reservations",style: TextStyle(color: Colors.purple, fontSize: 19, fontWeight: FontWeight.w600),),
                    ),
                    style: ButtonStyle(
                      side: MaterialStateProperty.all(BorderSide(color: Colors.transparent)),

                      shape: MaterialStateProperty.all<OutlinedBorder>(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),),
                    ),
                  ),
                  SizedBox(height: 10),
                  OutlinedButton.icon(
                    onPressed: (){ Navigator.pushNamed(context, 'timetables');},

                    icon: Padding(
                      padding: const EdgeInsets.only(left: 10.0 ,top:8.0, bottom: 8.0),
                      child: Icon(Icons.schedule_rounded, color: Colors.purple,),
                    ),
                    label: Padding(
                      padding: const EdgeInsets.only(top:8.0, right: 70.0, bottom: 8.0),
                      child: Text("Time Tables",style: TextStyle(color: Colors.purple, fontSize: 19, fontWeight: FontWeight.w600),),
                    ),

                    style: ButtonStyle(
                      side: MaterialStateProperty.all(BorderSide(color: Colors.transparent)),

                      shape: MaterialStateProperty.all<OutlinedBorder>(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),),
                    ),
                  ),

                  SizedBox(height: 10),
                  OutlinedButton.icon(
                    onPressed: (){ Navigator.pushNamed(context, 'settings');},

                    icon: Padding(
                      padding: const EdgeInsets.only(left: 10.0 ,top:8.0, bottom: 8.0),
                      child: Icon(Icons.settings_rounded, color: Colors.purple,),
                    ),
                    label: Padding(
                      padding: const EdgeInsets.only(top:8.0,right: 70.0,  bottom: 8.0),
                      child: Text("Settings",style: TextStyle(color: Colors.purple, fontSize: 19, fontWeight: FontWeight.w600),),
                    ),


                    style: ButtonStyle(
                      side: MaterialStateProperty.all(BorderSide(color: Colors.transparent)),

                      shape: MaterialStateProperty.all<OutlinedBorder>(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),),
                    ),
                  ),
                  SizedBox(height: 10),
                  OutlinedButton.icon(
                    onPressed: (){ Navigator.pushNamed(context, 'helppage');},

                    icon: Padding(
                      padding: const EdgeInsets.only(left:10.0 ,top:8.0, bottom: 8.0),
                      child: Icon(Icons.help_center_rounded, color: Colors.purple,),
                    ),
                    label: Padding(
                      padding: const EdgeInsets.only(top:8.0,right: 70.0, bottom: 8.0),
                      child: Text("Help",style: TextStyle(color: Colors.purple, fontSize: 19, fontWeight: FontWeight.w600),),
                    ),
                    style: ButtonStyle(
                      side: MaterialStateProperty.all(BorderSide(color: Colors.transparent)),

                      shape: MaterialStateProperty.all<OutlinedBorder>(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),),
                    ),
                  ),
                  Divider(
                      color: Colors.grey[350]
                  ),
                  SizedBox(height: 150.0,),
                  OutlinedButton(
                    onPressed: (){ Navigator.pushNamed(context, '/login'); },

                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5,vertical: 2 ),
                      child: Text("Log-out",style: TextStyle(color: Colors.white, fontSize: 19, fontWeight: FontWeight.w600),),
                    ),


                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(Colors.purpleAccent),
                      side: MaterialStateProperty.all(BorderSide(color: Colors.purpleAccent)),


                      shape: MaterialStateProperty.all<OutlinedBorder>(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),),
                    ),
                  ),

                ]),
          ],
        ),),



    );
  }
}