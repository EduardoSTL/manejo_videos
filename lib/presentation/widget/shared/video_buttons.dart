import 'package:flutter/material.dart';
import 'package:manejo_videos/domain/entitites/video_post.dart';

class VideoButtons extends StatelessWidget {
  final VideoPost video;
  const VideoButtons({
    super.key,
    required this.video
    });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        IconButton(onPressed: (){}, icon: Icon(Icons.favorite, color: Colors.red)),
      ],
    );
  }
}

class _CustomIconButton extends StatelessWidget {
  final int value;
  final IconData iconData;
  final Color color;

  const _CustomIconButton({
    super.key,
    required this.value,
    required this.iconData,  
    required this.color
    });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        IconButton(onPressed: (){}, icon: Icon(Icons.favorite, color: Colors.red)),
        Text('$value'),
        
      ],
    );
  }
}