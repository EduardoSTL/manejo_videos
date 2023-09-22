import 'package:flutter/material.dart';
import 'package:manejo_videos/domain/entitites/video_post.dart';
import 'package:manejo_videos/infrastructure/models/local_video_model.dart';
import 'package:manejo_videos/shared/data/local_video_post.dart';

//como implementar videos
class DiscoverProvider extends ChangeNotifier{
  bool initialLoading = true;
  List<VideoPost> videos = [];

  Future<void> loadNextPage() async{
    //DB repository
    await Future.delayed(const Duration(seconds: 2));
     final List<VideoPost> newVideos = videoPosts.map(
      (video) => LocalVideoModel.fromJson(video).toVideoPostEntity()).toList();

      videos.addAll(newVideos);
      initialLoading=false;
      notifyListeners();
  }
}