import 'package:audioplayers/audioplayers.dart';

class XylophoneServices {
  static void playNote(String nota) {
    AudioPlayer().play(AssetSource('assets_note$nota.wav'));
  }
}
