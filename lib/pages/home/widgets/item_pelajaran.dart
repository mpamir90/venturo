import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class ItemPelajaran extends StatelessWidget {
  const ItemPelajaran({
    Key? key,
    required this.videoId,
    required this.title,
  }) : super(key: key);

  final String videoId, title;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController _controller = YoutubePlayerController(
      initialVideoId: videoId,
      flags: const YoutubePlayerFlags(
        autoPlay: true,
        mute: true,
      ),
    );

    return Column(
      children: [
        Container(
          width: double.infinity,
          decoration: const BoxDecoration(
            color: Colors.lightBlue,
            borderRadius: BorderRadius.all(
              Radius.circular(20),
            ),
          ),
          padding: const EdgeInsets.all(10),
          child: Text(
            title,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 16,
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        GestureDetector(
          onTap: () {
            showDialog(
              context: context,
              builder: (context) => AlertDialog(
                content: YoutubePlayer(
                  controller: _controller,
                  showVideoProgressIndicator: true,
                  progressIndicatorColor: Colors.amber,
                  progressColors: const ProgressBarColors(
                    playedColor: Colors.amber,
                    handleColor: Colors.amberAccent,
                  ),
                ),
              ),
            );
          },
          child: Container(
            height: 250,
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Image.network('https://img.youtube.com/vi/$videoId/0.jpg'),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
      ],
    );
  }
}
