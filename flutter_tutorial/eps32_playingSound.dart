import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class Eps32 extends StatefulWidget {
  @override
  _Eps32State createState() => _Eps32State();
}

class _Eps32State extends State<Eps32> {
  AudioPlayer audio;
  String waktu = "00:00:00";

  _Eps32State() {
    audio = AudioPlayer();
    audio.onAudioPositionChanged.listen((event) {
      setState(() {
        waktu = event.toString();
      });
    });
    audio.setReleaseMode(ReleaseMode.LOOP);
  }

  void play(String url) async {
    await audio.play(url);
  }

  void pause() async {
    await audio.pause();
  }

  void stop() async {
    await audio.stop();
  }

  void resume() async {
    await audio.resume();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Belajar Audio Player"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            RaisedButton(
              onPressed: () {
                play("https://luan.xyz/files/audio/ambient_c_motion.mp3");
              },
              child: Text("Play"),
            ),
            RaisedButton(
              onPressed: () {
                pause();
              },
              child: Text("Pause"),
            ),
            RaisedButton(
              onPressed: () {
                stop();
              },
              child: Text("Stop"),
            ),
            RaisedButton(
              onPressed: () {
                pause();
              },
              child: Text("Resume"),
            ),
            Text(waktu)
          ],
        ),
      ),
    );
  }
}
