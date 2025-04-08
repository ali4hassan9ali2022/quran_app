import 'dart:async';

import 'package:audioplayers/audioplayers.dart';
import 'package:quran_app/constents.dart';

class PlayController {
  late int index;
  late AudioPlayer audioPlayer;
  late AudioCache audioCache;
  late Uri uri;
  late StreamController<bool> playStatusStreamController;
  late Sink<bool> playStatusInputData;
  late Stream<bool> playStatusOutputData;
  late bool isPlaying;
  PlayController._interna(this.index) {
    audioPlayer = AudioPlayer();
    audioCache = AudioCache(prefix: "");
    playStatusStreamController = StreamController();
    playStatusInputData = playStatusStreamController.sink;
    playStatusOutputData = playStatusStreamController.stream;
  }
  static PlayController? instance;
  factory PlayController(int index) {
    instance ??= PlayController._interna(index);
    return instance!;
  }
  void playAudio() async {
    uri = await audioCache.load(Constents.items[index].path);
    audioPlayer.play(UrlSource(uri.toString()));
    isPlaying = true;
    playStatusInputData.add(isPlaying);
  }

  void disposeAudio() {
    audioPlayer.dispose();
  }
  void changePlayStatus() {
    if (audioPlayer.state == PlayerState.playing) {
      audioPlayer.pause();
      isPlaying = false;
    } else if (audioPlayer.state == PlayerState.paused) {
      audioPlayer.resume();
      isPlaying= true;
    }
    playStatusInputData.add(isPlaying);
  }
}
