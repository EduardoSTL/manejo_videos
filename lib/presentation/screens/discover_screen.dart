import 'package:flutter/material.dart';
import 'package:manejo_videos/presentation/providers/discover_provider.dart';
import 'package:manejo_videos/presentation/widget/shared/video_scrollable.dart';
import 'package:provider/provider.dart';

class DiscoverScreen extends StatelessWidget {
  
  const DiscoverScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final discoverProvider = context.watch<DiscoverProvider>();
    return Scaffold(
      body: discoverProvider.initialLoading
      ? const Center(child: CircularProgressIndicator(strokeAlign: 2,))
      : VideoScrollableView(videos: discoverProvider.videos)
    );
  }
}