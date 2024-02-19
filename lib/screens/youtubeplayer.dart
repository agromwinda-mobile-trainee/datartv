import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class Youtubeplayer extends StatefulWidget {
  const Youtubeplayer({Key? key}) : super(key: key);

  @override
  State<Youtubeplayer> createState() => _YoutubeplayerState();
}

class _YoutubeplayerState extends State<Youtubeplayer> {
  YoutubePlayerController? _controller;

  @override
  void initState() {
    super.initState();

    _controller = YoutubePlayerController(
      initialVideoId:
          'xT2BvE4-osQ', // https://www.youtube.com/live/xT2BvE4-osQ?feature=share
      flags: const YoutubePlayerFlags(
        autoPlay: false,
        mute: true,
        isLive: false,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return YoutubePlayerBuilder(
      player: YoutubePlayer(
        controller: _controller!,
        showVideoProgressIndicator: true,
        progressIndicatorColor: Colors.amber,
        progressColors: const ProgressBarColors(
          playedColor: Colors.amber,
          handleColor: Colors.amberAccent,
        ),
      ),
      builder: (context, player) {
        return Container(
          child: player,
        );
      },
    );
  }
}
