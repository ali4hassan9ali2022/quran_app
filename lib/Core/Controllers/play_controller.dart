import 'package:audioplayers/audioplayers.dart';
import 'package:quran_app/constents.dart';

class PlayController {
  late int index;
  late AudioPlayer audioPlayer;
  late AudioCache audioCache;
  late Uri uri;

  PlayController._interna(this.index) {
    audioPlayer = AudioPlayer();
    audioCache = AudioCache(prefix: "");
  }
  static PlayController? instance;
  factory PlayController(int index) {
    instance??= PlayController._interna(index);
    return instance!;
   
  }
  void initAudio() async {
    uri = await audioCache.load(Constents.items[index].path);
    audioPlayer.play(UrlSource(uri.toString()));
  }
  void disposeAudio() {
    audioPlayer.dispose();
  }
}