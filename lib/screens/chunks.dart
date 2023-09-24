import 'dart:io';

import 'package:flutter/material.dart';
import "package:video_player/video_player.dart";

class Chunks extends StatefulWidget {
  const Chunks({super.key, required this.size});
  final Size size;
  @override
  State<Chunks> createState() => _ChunksState();
}

class _ChunksState extends State<Chunks> {
  late VideoPlayerController _controller;
  var current_video = 0;
  var videos = [
    "assets/videos/v1.mp4",
    "assets/videos/v2.mp4",
    "assets/videos/v3.mp4",
    "assets/videos/v4.mp4"
  ];
  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset(videos[current_video])
      ..initialize().then((_) {
        setState(() {});
      });
  }

  @override
  Widget build(BuildContext context) {
    _controller.play();
    return Container(
      width: widget.size.width,
      child: Stack(
        children: [
          Container(
            color: Theme.of(context).primaryColor,
          ),
          GestureDetector(
            onVerticalDragEnd: (details) {
              if (details.primaryVelocity! < 0) {
                current_video = (current_video + 1) % 4;
                _controller = VideoPlayerController.asset(videos[current_video])
      ..initialize().then((_) {
        setState(() {});
      });
              }
              if (details.primaryVelocity! > 0) {
                current_video = (current_video - 1) % 4;
                _controller = VideoPlayerController.asset(videos[current_video])
      ..initialize().then((_) {
        setState(() {});
      });
              }
            },
            child: Center(
                child: _controller.value.isInitialized
                    ? SizedBox(
                      width: widget.size.width,
                        child: VideoPlayer(_controller),
                      )
                    : Container(),
              ),
          )
        ],
      ),
    );
  }
}
