import 'package:flutter/material.dart';
import 'package:tune_app/shared/components/components.dart';

import 'models/tune_model.dart';

class TuneApp extends StatelessWidget {
  TuneApp({Key? key}) : super(key: key);

  // 0xffed2b3c
  // 0xfff39430
  // 0xfffcf25d
  // 0xff3dc15b
  // 0xff0ca587
  // 0xff0ea0e9
  // 0xff9b10a9

  final List<TuneModel> tunes =  [
    TuneModel(sound: 'note1.wav', color: Color(0xffed2b3c)),
    TuneModel(sound: 'note2.wav', color: Color(0xfff39430)),
    TuneModel(sound: 'note3.wav', color: Color(0xfffcf25d)),
    TuneModel(sound: 'note4.wav', color: Color(0xff3dc15b)),
    TuneModel(sound: 'note5.wav', color: Color(0xff0ca587)),
    TuneModel(sound: 'note6.wav', color: Color(0xff0ea0e9)),
    TuneModel(sound: 'note7.wav', color: Color(0xff9b10a9)),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff232b34),
        title: Text(
          'Flutter Tune',
        ),
        elevation: 0.0,
        centerTitle: true,
      ),
      body: Column(
        children:
          tunes.map((e) => TuneItem(tune: e)).toList(),
      ),
    );
  }
}
