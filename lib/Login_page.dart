import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_pages/choice.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({ Key? key }) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}
class _LoginPageState extends State<LoginPage> {

  @override
  Widget build(BuildContext context) {
    double w= MediaQuery.of(context).size.width;
    double h= MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white ,

      body:
      Container(

        child:Stack(children:[ Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                      'assets/1.png'
                  ),
                  fit: BoxFit.fill
              )

          )
          ,
        ),
          Form( child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [


                Container(
                  margin: const EdgeInsets.only(left: 20, right: 20),
                  width: w,

                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height:300,),
                      TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Enter your username",


                        ),

                      )

                    ],),
                ),
                SizedBox(height: 10.0,),
                Divider(
                    color: Colors.grey[350]
                ),
                Container(
                  margin: const EdgeInsets.only(left: 20, right: 20),
                  width: w,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 5,),
                      TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText:"Enter your password",
                        ),
                        obscureText: true,

                      )

                    ],),
                ),
                SizedBox(height:10.0),
                Divider(
                    color: Colors.grey[350]
                ),
                SizedBox(height: 5,),
                Container(
                  margin: const EdgeInsets.only(left: 200, right: 5),
                  width: w,
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 5,),
                        Text(
                            "Forgot Password? ",
                            style: TextStyle(
                                fontSize: 20,
                                color:Colors.grey[500])
                        )
                      ]
                  ),

                ),
                SizedBox(height: 10,),
                Container(
                    child: Stack(
                        children: [
                          Center(
                              child: Column(
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.symmetric(vertical: 20.0,horizontal: 20.0),                         child: FlatButton(
                                        onPressed: ()  {        Navigator.pushNamed(context, '/home');

                                        },
                                        shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(50)
                                        ),
                                        color:Colors.purple[900],
                                        padding: EdgeInsets.all(20),
                                        minWidth: 147,
                                        height: 48,
                                        child: Text('Sign in',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 25,
                                                fontWeight: FontWeight.bold,
                                                fontFamily: 'Satisfy'
                                            )
                                        )

                                    ),
                                    ),
                                  ]
                              )
                          )
                        ]
                    )
                ),

                SizedBox(height: 5,),
                Container(
                  margin: const EdgeInsets.only(left: 60, right: 40),
                  width: w,
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 10,),
                        Text(
                            "You dont have an account? ",
                            style: TextStyle(
                                fontSize: 20,
                                color:Colors.grey[500])
                        )
                      ]
                  ),

                ),
                Container(
                    child: Stack(
                        children: [
                          Center(
                              child: Column(
                                  children: [
                                    Container(
                                        child: Stack(
                                            children: [
                                              Center(
                                                  child: Column(
                                                      children: [
                                                        Padding(
                                                          padding: const EdgeInsets.all(20),

                                                          child: FlatButton(
                                                              onPressed: () {
                                                                Navigator.pushReplacement(context, MaterialPageRoute(builder:(context)=>Choice()));
                                                              },
                                                              shape: RoundedRectangleBorder(
                                                                borderRadius: BorderRadius.circular(50),

                                                              ),

                                                              color: Colors.deepPurple[100],


                                                              padding: EdgeInsets.symmetric(vertical: 20.0,horizontal: 20.0),
                                                              minWidth: 147,
                                                              height: 52,

                                                              child: Text('Sign up',
                                                                  style: TextStyle(
                                                                      color: Colors.purple[900],
                                                                      fontSize: 25,
                                                                      fontWeight: FontWeight.bold,
                                                                      fontFamily: 'Satisfy')
                                                              )

                                                          ),
                                                        ),
                                                      ]
                                                  )
                                              )
                                            ]
                                        )

                                    )

                                  ]
                              )
                          )
                        ]
                    )
                )
              ]
          ),
          ),
        ]),),

    );
  }
}