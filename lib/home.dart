import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    void playButton() {
      final player = AudioCache();
      player.play('note1.wav');
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('ReCode'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Xylophone App By ReCode",
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 50,
              width: 100,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.purple,
                ),
                onPressed: () {
                  playButton();
                },
                child: null,
              ),
            ),
            SizedBox(
              height: 50,
              width: 100,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.purple[400],
                ),
                onPressed: () {
                  final player = AudioCache();
                   playButton();
                },
                child: null,
              ),
            ),
            SizedBox(
              height: 50,
              width: 100,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.purple[300],
                ),
                onPressed: () {
                  playButton();
                },
                child: null,
              ),
            ),
            SizedBox(
              height: 50,
              width: 100,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.purple[200],
                ),
                onPressed: () {
                   playButton();
                },
                child: null,
              ),
            ),
            SizedBox(
              height: 50,
              width: 100,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.purple[100],
                ),
                onPressed: () {
                   playButton();
                },
                child: null,
              ),
            ),
            // SizedBox(
            //   height: 50,
            //   width: 100,
            //   child: ElevatedButton(
            //     style: ElevatedButton.styleFrom(
            //       primary: Colors.purple[50],
            //     ),
            //     onPressed: () {
            //       final player = AudioCache();
            //       player.play('note5.wav');
            //     },
            //     child: null,
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
