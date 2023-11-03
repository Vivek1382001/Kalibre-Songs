import 'package:appinio_video_player/appinio_video_player.dart';
import 'package:flutter/material.dart';

enum Source { Asset, Network }

class Videoplayer extends StatefulWidget {
  const Videoplayer({super.key});

  @override
  State<Videoplayer> createState() => _VideoplayerState();
}

class _VideoplayerState extends State<Videoplayer> {
  late CustomVideoPlayerController _customVideoPlayerController;
  Source currentSource = Source.Asset;
  Uri videoUrl = Uri.parse(
      "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4");
  String assetVideoPath = "assets/videos/skyvideo.mp4";
  late bool isLoading = true;
  @override
  void initState() {
    super.initState();
    initializeVideoPlayer(currentSource);
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
        body: isLoading
            ? const Center(
                child: CircularProgressIndicator(
                color: Colors.black12,
              ))
            : Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children:[CustomVideoPlayer(
                  customVideoPlayerController: _customVideoPlayerController,
                ),_sourceButtons(),
                ]

                  ));
  }

  Widget _sourceButtons() {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Container(
      margin: EdgeInsets.only(bottom:height/100*5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          MaterialButton(
            color: Colors.red,
            child:  Text(
              "Network",
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 25,
              color: Colors.black),

            ),
            onPressed: () {
              setState(() {
                currentSource = Source.Network;
                initializeVideoPlayer(currentSource);
              });
            },
          ),
          MaterialButton(
            color: Colors.red,
            child: const Text(
              "Assets",
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 25,
              color: Colors.black),
            ),
            onPressed: () {
              setState(() {
                currentSource = Source.Asset;
                initializeVideoPlayer(currentSource);
              });
            },
          )
        ],
      ),
    );
  }

  void initializeVideoPlayer(Source source) {
    setState(() {
      isLoading = true;
    });
    VideoPlayerController _videoPlayerController;
    if (source == Source.Asset) {
      _videoPlayerController =
          VideoPlayerController.asset('assets/videos/skyvideo.mp4')
            ..initialize().then((value) {
              setState(() {
                isLoading = false;
              });
            });
    } else if (source == Source.Network) {
      _videoPlayerController = VideoPlayerController.networkUrl(videoUrl)
        ..initialize().then((value) {
          setState(() {
            isLoading = false;
          });
        });
    } else {
      return;
    }
    _customVideoPlayerController = CustomVideoPlayerController(
        context: context, videoPlayerController: _videoPlayerController);
  }
}
