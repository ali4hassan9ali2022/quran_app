import 'package:quran_app/Core/Models/songs_model.dart';
import 'package:quran_app/Core/Utils/assets.dart';

class Constents {
  static List<SongsModel> items = [
     SongsModel(
      path: "assets/audio/خالد ابا الجليل.mp3",
      image: Assets.imagesQu1,
      title: "وقال فرعون ذرونى",
      subTitle: "خالد عبد الجليل",
    ),
     SongsModel(
      path: "assets/audio/طه.mp3",
      image: Assets.imagesQu2,
      title: "طه",
      subTitle: "ياسر الدوسرى ",
    ),
     SongsModel(
      path: "assets/audio/عبد الله كامل سكرة الموت.mp3",
      image: Assets.imagesQu3,
      title: "سكرة الموت",
      subTitle: "عبدالله كامل",
    )];
}