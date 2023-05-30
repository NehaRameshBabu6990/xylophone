import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: xylophone(),
  ));
}
class xylophone extends StatefulWidget {


  @override
  State<xylophone> createState() => _xylophoneState();
}

class _xylophoneState extends State<xylophone> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('xylophone',),
    backgroundColor: Colors.black,

      ),
      body: Column(
        children: [
          containerwidget(color: Colors.pink, sound: 1,),
          containerwidget(color: Colors.blue, sound:2, ),
          containerwidget(color: Colors.yellow, sound: 3,),
          containerwidget(color: Colors.green, sound: 4,),
          containerwidget(color: Colors.white, sound: 5,),
          containerwidget(color: Colors.orange, sound: 6,),
          containerwidget(color: Colors.purple, sound: 7,),
        ],
      ),
    );

  }
}

class containerwidget extends StatelessWidget {
  Color? color;
  int? sound;
containerwidget({super.key,required this.color,required this.sound});
 void playSound(int soundNumber) {
   final player =AudioCache();
   player.play('assets_note$soundNumber.wav');
 }
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
          color:color,
          child: TextButton(
            onPressed: (){},
            child: Center(child: Text('audio'),),
          ),
        ),
    );
  }
}