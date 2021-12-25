import 'package:flutter/material.dart';
import 'package:my_pages/student.dart';
import 'package:my_pages/teacher.dart';
class Choice extends StatefulWidget {
  const Choice ({ Key? key }) : super(key: key);

  @override
  _ChoiceState createState() => _ChoiceState();
}
class _ChoiceState extends State<Choice> {
  get child => null;


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body:
      Container(

          child: Stack(
              children:[
                Container(
                  decoration:   BoxDecoration(
                    image: DecorationImage(
                        image:  AssetImage('assets/5.png'),
                        fit: BoxFit.fill
                    ),
                  ),
                ),
                Positioned(bottom: 0.0, child: Text("h", style: TextStyle(color: Colors.transparent),)),

                Center(
                  child: Column(
                      children: [




                        SizedBox(height: 180,),
                        FlatButton(
                            onPressed: () {
                              Navigator.pushReplacement(context, MaterialPageRoute(builder:(context)=>Teacher()));
                            },
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50)
                            ),
                            color: Colors.deepPurple[300],
                            padding: EdgeInsets.all(25),
                            minWidth: 138,
                            height: 60,
                            child: Text('Teacher',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Satisfy')
                            )

                        ),
                        SizedBox(height: 40,),
                        Text(
                            "OR",
                            style: TextStyle(
                                fontSize: 40,
                                fontWeight: FontWeight.bold,
                                color:Colors.deepPurple[200],
                                fontFamily: 'Satisfy')
                        ),
                        SizedBox(height: 40,),
                        FlatButton(
                            onPressed: () {
                              Navigator.pushReplacement(context, MaterialPageRoute(builder:(context)=>Student()));
                            },
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50)
                            ),
                            color: Colors.deepPurple[300],
                            padding: EdgeInsets.all(25),
                            minWidth: 138,
                            height: 60,
                            child: Text('Student',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize:25,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Satisfy')
                            )

                        ),
                      ]


                  ),
                ),
              ]

          )
      ),

    );
  }
}