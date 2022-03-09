import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    void playButton(int number) {
      final player = AudioCache();
      player.play('note$number.wav');
    }

    Expanded button({Color? color, required int number}) {
      return Expanded(
        child: SizedBox(
          height: 50,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: color,
            ),
            onPressed: () {
              playButton(number);
            },
            child: null,
          ),
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('ReCode'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "Xylophone App By ReCode",
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            button(color: Colors.red, number: 1),
            button(color: Colors.red[400], number: 2),
            button(color: Colors.red[300], number: 3),
            button(color: Colors.red[200], number: 4),
            button(color: Colors.red[100], number: 5),

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
