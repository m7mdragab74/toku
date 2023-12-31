import 'package:audioplayers/audioplayers.dart';

class ItemModel {
  String? image;
  String jpName;
  String enName;
  String sound;
  ItemModel(
      {this.image,
      required this.jpName,
      required this.enName,
      required this.sound});

  playSound() {
    final player = AudioPlayer();
    player.play(AssetSource(sound));
  }
}
