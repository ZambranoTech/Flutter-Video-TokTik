import 'package:toktik/domain/entities/video_post.dart';

class LocalVideoModel {
  final String name;
  final int likes;
  final int views;
  final String videoUrl;

  LocalVideoModel(
      {required this.name,
      required this.likes,
      required this.views,
      required this.videoUrl});

  factory LocalVideoModel.fromJsonMap(Map<String, dynamic> json) =>
      LocalVideoModel(
        name: json['name'] ?? 'No name',
        likes: json['likes'] ?? 0,
        views: json['views'] ?? 0,
        videoUrl: json['videoUrl'],
      );

  VideoPost toVideoPostEntity() =>
      VideoPost(
      caption: name, 
      videoUrl: videoUrl, 
      likes: likes, 
      views: views
      );
}
