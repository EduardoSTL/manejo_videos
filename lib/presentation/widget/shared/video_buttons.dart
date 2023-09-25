import 'package:flutter/material.dart';
import 'package:manejo_videos/domain/entitites/video_post.dart';

class VideoButton extends StatelessWidget {
  final VideoPost video;
  const VideoButton({
    super.key,
    required this.video
    });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        IconButton(onPressed: (){}, icon: Icon(Icons.favorite, color: Colors.red),)
      ],
    );
  }
}