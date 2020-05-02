import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class MovieDetails extends StatefulWidget {
  MovieDetails({this.link});
  final String link;
  @override
  _MovieDetailsState createState() => _MovieDetailsState();
}

class _MovieDetailsState extends State<MovieDetails> {
  YoutubePlayerController _controller;
  TextEditingController _idController;
  TextEditingController _seekToController;
  @override
  void initState() {
    _controller = YoutubePlayerController(
      initialVideoId: widget.link,
      flags: YoutubePlayerFlags(
        mute: false,
        autoPlay: true,
        forceHideAnnotation: true,
      ),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                color: Colors.blue,
                child: YoutubePlayer(
                  controller: _controller,
                  showVideoProgressIndicator: true,
                  onReady: () {
                    print('Player is ready.');
                  },
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
