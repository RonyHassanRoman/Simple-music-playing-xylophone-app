import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title:const  Text('ReCode'),
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
                  final player = AudioCache();
                  player.play('note1.wav');
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
                  player.play('note2.wav');
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
                  final player = AudioCache();
                  player.play('note3.wav');
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
                  final player = AudioCache();
                  player.play('note4.wav');
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
                  final player = AudioCache();
                  player.play('note5.wav');
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
