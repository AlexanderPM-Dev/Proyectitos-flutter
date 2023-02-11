import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class Videos extends StatefulWidget {
  static String name = "Videos";
  const Videos({super.key});

  @override
  State<Videos> createState() => _VideosState();
}

class _VideosState extends State<Videos> {
  late YoutubePlayerController controller;

  @override
  void initState() {
    super.initState();
    const url =
        "https://www.youtube.com/watch?v=0nWKnCWhAZk&list=RD0nWKnCWhAZk&start_radio=1&ab_channel=phonkaholic";
    controller = YoutubePlayerController(
      initialVideoId: YoutubePlayer.convertUrlToId(url)!,
      flags: const YoutubePlayerFlags(
        mute: false,
        loop: false,
        autoPlay: true,
        hideControls: false,
      ),
    )..addListener(() {
        if (mounted) {
          setState(() {});
        }
      });
  }

  @override
  Widget build(BuildContext context) => YoutubePlayerBuilder(
      player: YoutubePlayer(
        controller: controller,
      ),
      builder: (context, player) => Scaffold(
            appBar: AppBar(
              title: const Text("Youtube Player"),
            ),
            body: ListView(
              children: [
                player,
                Text(controller.metadata.title),
                const SizedBox(
                  height: 8,
                ),
                Text(controller.metadata.author),
                const SizedBox(
                  height: 8,
                ),
                Text(' ${controller.metadata.duration.inSeconds} segundos'),
                const SizedBox(height: 16),
                const SizedBox(
                  height: 8,
                ),
                
                
                ElevatedButton(
                  child: Text(controller.value.isPlaying ? 'Play' : 'Stop'),
                  onPressed: () {
                    if (controller.value.isPlaying) {
                      controller.pause();
                    } else {
                      controller.play();
                    }

                    controller.mute();
                    controller.unMute();
                    controller.seekTo(const Duration(seconds: 10));
                    // const url =
                    //     "https://www.youtube.com/watch?v=GQyWIur03aw&ab_channel=HeyFlutter";
                    // controller.load(YoutubePlayer.convertUrlToId(url)!);
                  },
                ),
              ],
            ),
          ));
}
