import 'package:flutter/material.dart';
import 'package:kalibresong/signin_screen.dart';

class welcome extends StatefulWidget {
  const welcome({super.key});

  @override
  State<welcome> createState() => _welcomeState();
}

class _welcomeState extends State<welcome> {

  TextEditingController userInput = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery
        .of(context)
        .size
        .height;
    var width = MediaQuery
        .of(context)
        .size
        .width;
    return Scaffold(
        body: Container(
          color: Colors.orangeAccent,
          height: height,
          width: width,
          child: SingleChildScrollView(
            child: Column(children: [
              Container(
                margin: EdgeInsets.only(top: height / 100 * 10),
                child: Text(
                  "Welcome To",
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: width / 100 * 10,
                    color: Color(0xFF000000),
                  ),
                ),
              ),
              SizedBox(
                height: height / 100 * 1,
              ),
              Image(
                image: AssetImage("assets/siginup.jpg"),
                height: height / 100 * 50,
                width: width / 100 * 100,
              ),
              Text('Kalibre Music',
                style: TextStyle(
                    fontWeight: FontWeight.w900,
                    fontSize: 40,
                    color: Colors.black
                ),),
              SizedBox(
                height: height / 100 * 8,
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      minimumSize: Size(250, 50)),
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>signin()));
                  },
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: width / 100 * 17,
                      ),
                      Text(
                        "Sign in With Google",
                        style: TextStyle(
                            fontSize: width / 100 * 3,
                            color: Colors.black
                        ),
                      ),
                      SizedBox(
                        width: width / 100 * 10,
                      ),
                      CircleAvatar(
                        radius: 12,
                        child: Icon(
                          Icons.arrow_forward,
                          size: width / 100 * 4,
                        ),
                      )
                    ],
                  )),
              SizedBox(
                height: height / 100 * 2,
              ),
            ]),
          ),
        ));
  }
}