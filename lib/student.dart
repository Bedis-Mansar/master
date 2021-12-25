import 'package:flutter/material.dart';
class Student extends StatefulWidget {
  const Student ({ Key? key }) : super(key: key);

  @override
  _StudentState createState() => _StudentState();
}
class _StudentState extends State<Student> {
  get child => null;


  @override
  Widget build(BuildContext context) {

    return Scaffold(
        body:
        Container(
            child: Form( child: Column(
                children: [
                  Container(
                    child: Stack(
                        children: [
                          Positioned.fill(
                            child: Image.asset('assets/6.png',
                                fit: BoxFit.fill),

                          ),
                          Center(

                            child: Column(
                                children: [
                                  Container(
                                    margin: const EdgeInsets.only(left: 40, right: 40),

                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(height: 30,),
                                        TextField(
                                          decoration: InputDecoration(
                                            border: InputBorder.none,
                                            hintText: " Enter Your Username",


                                          ),

                                        )

                                      ],),
                                  ),
                                  SizedBox(height: 5,),
                                  Container(

                                    margin: const EdgeInsets.only(left: 30, right: 30,),
                                    padding: EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                        border: Border(
                                            bottom: BorderSide(color: Colors.grey)
                                        )

                                    ),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.only(left: 40, right: 40),

                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(height: 5,),
                                        TextField(
                                          decoration: InputDecoration(
                                              border: InputBorder.none,
                                              hintText: "Enter Your CIN"


                                          ),

                                        )

                                      ],),
                                  ),
                                  SizedBox(height: 5,),
                                  Container(

                                    margin: const EdgeInsets.only(left: 30, right: 30,),
                                    padding: EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                        border: Border(
                                            bottom: BorderSide(color: Colors.grey)
                                        )

                                    ),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.only(left: 40, right: 40),

                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(height: 5,),
                                        TextField(
                                          decoration: InputDecoration(
                                            border: InputBorder.none,
                                            hintText: " Gender",


                                          ),

                                        )

                                      ],),
                                  ),
                                  SizedBox(height: 5,),
                                  Container(

                                    margin: const EdgeInsets.only(left: 30, right: 30,),
                                    padding: EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                        border: Border(
                                            bottom: BorderSide(color: Colors.grey)
                                        )

                                    ),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.only(left: 40, right: 40),

                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(height: 5,),
                                        TextField(
                                          decoration: InputDecoration(
                                            border: InputBorder.none,
                                            hintText: " Enter Your E-mail",


                                          ),

                                        )

                                      ],),
                                  ),
                                  SizedBox(height: 5,),
                                  Container(

                                    margin: const EdgeInsets.only(left: 30, right: 30,),
                                    padding: EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                        border: Border(
                                            bottom: BorderSide(color: Colors.grey)
                                        )

                                    ),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.only(left: 40, right: 40),

                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(height: 5),
                                        TextField(
                                          decoration: InputDecoration(
                                            border: InputBorder.none,
                                            hintText: " Enter Your Telephone Number",


                                          ),

                                        )

                                      ],),
                                  ),
                                  SizedBox(height: 5,),
                                  Container(

                                    margin: const EdgeInsets.only(left: 30, right: 30,),
                                    padding: EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                        border: Border(
                                            bottom: BorderSide(color: Colors.grey)
                                        )

                                    ),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.only(left: 40, right: 40),

                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(height: 5,),
                                        TextField(
                                          decoration: InputDecoration(
                                            border: InputBorder.none,
                                            hintText: " Enter your Password",
                                          ),
                                          obscureText: true,

                                        )

                                      ],),
                                  ),
                                  SizedBox(height: 5,),
                                  Container(

                                    margin: const EdgeInsets.only(left: 30, right: 30,),
                                    padding: EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                        border: Border(
                                            bottom: BorderSide(color: Colors.grey)
                                        )

                                    ),
                                  ),
                                  SizedBox(height: 40,),
                                  Padding(
                                    padding: EdgeInsets.symmetric(vertical: 20.0,horizontal: 20.0),
                                    child: FlatButton(
                                        onPressed: () {
                                          Navigator.pushNamed(context, '/login');
                                        },

                                        shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(50)
                                        ),
                                        color: Colors.deepPurple[300],
                                        padding: EdgeInsets.all(25),
                                        minWidth: 138,
                                        height: 60,
                                        child: Text('Sign up',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize:25,
                                                fontWeight: FontWeight.bold,fontFamily: 'Satisfy')
                                        )

                                    ),
                                  ),
                                ]
                            ),
                          ),
                        ]
                    ),
                  )
                ]
            )
            )
        )
    );
  }
}