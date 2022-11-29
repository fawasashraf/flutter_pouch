import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class ButtonSounds extends StatefulWidget {
  @override
  _PageState createState() => _PageState();
}

class _PageState extends State<ButtonSounds> {
  AudioCache _audioCache;

  @override
  void initState() {
    super.initState();
    // create this only once
    _audioCache = AudioCache(prefix: "audio/", fixedPlayer: AudioPlayer()..setReleaseMode(ReleaseMode.STOP));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Music play")),
        body: ElevatedButton(
          onPressed: () => _audioCache.play('buttonClick.mp3'),
          child: Text("Play Audio"),
        ),
      ),
    );
  }
}