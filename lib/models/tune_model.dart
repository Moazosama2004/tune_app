import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class TuneModel {

  TuneModel({
    required this.sound,
    required this.color
  });

  String sound;
  Color color;

  playSound() {
    final player = AudioPlayer();
    player.play(AssetSource(sound));
  }

}