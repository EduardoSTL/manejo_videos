import 'package:flutter/material.dart';
import 'package:manejo_videos/domain/entitites/video_post.dart';

class VideoScrollableView extends StatelessWidget {
  final List<VideoPost> videos;
  const VideoScrollableView({super.key, required this.videos});

  @override
  Widget build(BuildContext context) {
    return PageView(
      children: [
        Container(color: (Colors.red)),
        Container(color: (Colors.blue)),
        Container(color: (Colors.green)),
      ],
    );
  }
}