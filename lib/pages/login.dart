import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import '../widgets/circle.dart';
import '../widgets/inputText.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {

    final size =MediaQuery.of(context).size;

    return Scaffold(

      body: Container(
        width: size.width,
        height: size.height,
        child: Stack(
          children: <Widget>[


            Positioned(
                right: -size.width*0.22,
                top: -size.width*0.36,
                child:  Circle(
                  radius: size.width*0.45,
                  colors: [
                    Colors.greenAccent,
                    Colors.green,


                  ],
                ),
            ),

            Positioned(
              left: -size.width*0.15,
              top: -size.width*0.34,
              child:  Circle(
              radius: size.width*0.35,
              colors: [
                Colors.blue,
                Colors.lightBlue,


              ],
            ),
      ),

            SingleChildScrollView(

              child: Container(
                width: size.width,
                height: size.height,
                child: SafeArea(
                  child: Column(

                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[

                      Column(
                        children: <Widget>[
                          Container(
                            width: 90,
                            height: 90,
                            margin: EdgeInsets.only(top: size.width*0.3),

                            decoration:BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(15),
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.black26,blurRadius: 25)
                                ]),
                          ),
                          SizedBox(height: 30),
                          Text("Bienvenido de nuevo.\nWelcome back",
                              textAlign: TextAlign.center,
                              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w300)
                          ),

                        ],
                      ),

                      Column(
                        children: <Widget>[
                          ConstrainedBox(
                            constraints: BoxConstraints(
                              maxWidth: 350,
                              minWidth: 350,
                            ),
                            child: Column(
                              children: <Widget>[
                                InputText()
                              ],

                            ),
                          ),
                          SizedBox(height: 40),
                          ConstrainedBox(
                            constraints: BoxConstraints(
                              maxWidth: 350,
                              minWidth: 350,
                            ),
                            child: CupertinoButton(
                              padding: EdgeInsets.symmetric(vertical: 17),
                              color: Colors.blue,
                              borderRadius: BorderRadius.circular(4),
                              onPressed:(){} ,
                              child: Text("Iniciar sesión", style: TextStyle(fontSize: 20),),
                            ),
                          ),
                          SizedBox(height: 20),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text("¿No tienes cuenta? ",
                                style: TextStyle(fontSize: 15,color: Colors.black54)),
                              CupertinoButton(
                                onPressed: (){},
                                child: Text(
                                  "Registrate",
                                  style: TextStyle(fontSize: 13, color: Colors.blueAccent),),
                              )
                            ],
                          )



                        ],
                      )


                    ],
                  ),
                )
              )
            )

          ],
        ),

      ),
    );
  }
}
