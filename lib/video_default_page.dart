import 'package:flutter/material.dart';

class VideoDetailPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Text('動画'),
        ),
      ),
    );
  }
}