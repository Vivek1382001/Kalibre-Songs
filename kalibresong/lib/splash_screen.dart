import 'dart:async';
import 'package:flutter/material.dart';

import 'onboarding_screen.dart';
class splash extends StatefulWidget {
  const splash({super.key});

  @override
  State<splash> createState() => _splashState();
}

class _splashState extends State<splash> {
  void initState() {
    Timer(Duration(seconds: 2), () {
      Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => onboarding()),
              (route) => false);
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                    "assets/backgroudscreen.jpg",
                  ),
                  fit: BoxFit.fill),
            ),
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(top: height/100*10),
                  alignment: Alignment.center,
                  child: Image.asset(
                    "assets/logo.jpg",
                    height: height / 100 * 50,
                    width: width / 100 * 50,
                  ),
                ),
                Container(
                  child:
                  Text('Kalibre Music',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                        fontSize:30
                    ),
                  ),
                ),
              ],
            ),

          ),


        ],
      ),
    );
  }
}


// import 'package:appinio_video_player/appinio_video_player.dart';
// import 'package:flutter/material.dart';
//
// enum Source { Asset, Network }
//
// class Videoplayer extends StatefulWidget {
//   const Videoplayer({super.key});
//
//   @override
//   State<Videoplayer> createState() => _VideoplayerState();
// }
//
// class _VideoplayerState extends State<Videoplayer> {
//   late CustomVideoPlayerController _customVideoPlayerController;
//   Source currentSource = Source.Asset;
//   Uri videoUrl = Uri.parse(
//       "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4");
//   String assetVideoPath = "assets/videos/natureyellow.mp4";
//   late bool isLoading = true;
//
//   @override
//   void initState() {
//     super.initState();
//     initializeVideoPlayer(currentSource);
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     var height = MediaQuery
//         .of(context)
//         .size
//         .height;
//     var width = MediaQuery
//         .of(context)
//         .size
//         .width;
//     return Scaffold(
//         body: isLoading
//             ? const Center(
//             child: CircularProgressIndicator(
//               color: Colors.black12,
//             ))
//             : Container(margin: EdgeInsets.only(
//             left: width / 100 * 1, right: width / 100 * 1,top: height/100*3.6),
//           height: height / 100 * 50,
//           width: width / 100 * 100,
//           child:
//           CustomVideoPlayer(
//             customVideoPlayerController: _customVideoPlayerController,
//           ),
//             _sourceButtons(),
//         ));
//   }
//
//   Widget _sourceButtons() {
//     return Row(
//       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//       crossAxisAlignment: CrossAxisAlignment.center,
//       children: [
//         MaterialButton(
//           color: Colors.red,
//           child: Text(
//             "Network",
//             style: TextStyle(fontWeight: FontWeight.w700, fontSize: 24,
//                 color: Colors.green),
//
//           ),
//           onPressed: () {
//             setState(() {
//               currentSource = Source.Network;
//               initializeVideoPlayer(currentSource);
//             });
//           },
//         ),
//         MaterialButton(
//           color: Colors.red,
//           child: const Text(
//             "Assets",
//             style: TextStyle(fontWeight: FontWeight.w700, fontSize: 25,
//                 color: Colors.orangeAccent),
//           ),
//           onPressed: () {
//             setState(() {
//               currentSource = Source.Asset;
//               initializeVideoPlayer(currentSource);
//             });
//           },
//         )
//       ],
//     );
//   }
//
//   void initializeVideoPlayer(Source source) {
//     setState(() {
//       isLoading = true;
//     });
//     VideoPlayerController _videoPlayerController;
//     if (source == Source.Asset) {
//       _videoPlayerController =
//       VideoPlayerController.asset('assets/videos/natureyellow.mp4')
//         ..initialize().then((value) {
//           setState(() {
//             isLoading = false;
//           });
//         });
//     } else if (source == Source.Network) {
//       _videoPlayerController = VideoPlayerController.networkUrl(videoUrl)
//         ..initialize().then((value) {
//           setState(() {
//             isLoading = false;
//           });
//         });
//     } else {
//       return;
//     }
//     _customVideoPlayerController = CustomVideoPlayerController(
//         context: context, videoPlayerController: _videoPlayerController);
//   }
// }

