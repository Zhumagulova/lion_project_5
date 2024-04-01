import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class XylophonePage extends StatefulWidget {
  const XylophonePage({Key? key}) : super(key: key);

  @override
  _XylophonePageState createState() => _XylophonePageState();
}

class _XylophonePageState extends State<XylophonePage> {
  final AudioPlayer audioPlayer = AudioPlayer();

  void playNote(String nota) {
    audioPlayer.play(
      AssetSource('assets/note$nota.wav'), // исправленный путь к файлу
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          buildContainer2(color: Colors.orange, nota: '1'),
          buildContainer2(color: Colors.yellow, nota: '2'),
          buildContainer2(color: Colors.green, nota: '3'),
          buildContainer2(color: Colors.greenAccent, nota: '4'),
          buildContainer2(color: Colors.blue, nota: '5'),
          buildContainer2(color: Colors.red, nota: '6'),
          buildContainer2(color: Colors.purple, nota: '7'),
        ],
      ),
    );
  }

  Expanded buildContainer2({
    required Color color,
    required String nota,
  }) {
    return Expanded(
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          splashColor: Colors.grey.withOpacity(0.5),
          onTap: () {
            playNote(nota);
          },
          child: Ink(
            color: color,
          ),
        ),
      ),
    );
  }
}
/// 3 variant
//Expanded buildContainer1(Color konteinerdinTusu) {
 // return Expanded(
   // child: Material(
      //color: Colors.transparent,
     // child: InkWell(
     //   splashColor: Colors.grey.withOpacity(0.5),
     //   onTap: () {
      //    print('Color.red was tapped');
      //  },
      //  child: Ink(
      //    color: konteinerdinTusu,
     //   ),
     // ),
   // ),
 // );
//}

/// 1. void funksiya(){}-> ech nerse alip kelbeyt,prosto ish atkarat
/// 2.types funksiya(){return types;} -> bir nerse kaitaryp kelet,return;
/// 
/// KISS - Keep it Simple,Stupid
/// DRY - Don't Repeat Yourself
/// 
/// 
/// Library
/// extension, plugin,package,bundle.....
/// package,plagin