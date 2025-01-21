import 'package:toktik/domain/entities/video_post.dart';

class LocalVideoPost {
  final String caption;
  final String videoUrl;
  final int likes;
  final int views;

  LocalVideoPost(
      {required this.caption,
      required this.videoUrl,
      this.likes = 0,
      this.views = 0});

  factory LocalVideoPost.fromJsonMap(Map<String, dynamic> json) =>
      LocalVideoPost(
        caption: json["name"] ?? 'No name',
        videoUrl: json["videoUrl"],
        likes: json["likes"] ?? 0,
        views: json["views"] ?? 0,
      );

  Map<String, dynamic> toJson() => {
        "caption": caption,
        "videoUrl": videoUrl,
        "likes": likes,
        "views": views,
      };

  VideoPost toVideoPostEntity() => VideoPost(
      caption: caption, videoUrl: videoUrl, likes: likes, views: views);
}
