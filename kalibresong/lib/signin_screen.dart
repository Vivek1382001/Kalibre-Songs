import 'package:flutter/material.dart';
import 'package:kalibresong/video_gallery.dart';

class signin extends StatefulWidget {
  const signin({super.key});

  @override
  State<signin> createState() => _signinState();
}

class _signinState extends State<signin> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    // var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        children: [
          Container(
              child: Image(
                image: AssetImage('assets/signinup.jpg'),
              )),
          SizedBox(
            height: height / 100 * 2,
          ),
          Text(
            'Click Here',
            style: TextStyle(
                fontWeight: FontWeight.w900, fontSize: 40, color: Colors.black),
          ),
          SizedBox(
            height: height / 100 * 2,
          ),
          InkWell(
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => Videoplayer()));
            },
            child: Container(
              height: height / 100 * 20,
              child: Image(
                image: AssetImage(
                  'assets/green.png',
                ),
              ),
            ),
          ),
          SizedBox(
            height: height / 100 * 2,
          ),
          Text(
            'To Listen Something Good',
            style: TextStyle(
                fontWeight: FontWeight.w900, fontSize: 25, color: Colors.black),
          ),
        ],
      ),
    );
  }
}
