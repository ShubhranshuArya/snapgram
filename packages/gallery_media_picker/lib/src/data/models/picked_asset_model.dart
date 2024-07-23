import 'dart:io';
import 'dart:typed_data';
import 'dart:ui';

class PickedAssetModel {

  PickedAssetModel({
    required this.id,
    required this.path,
    required this.type,
    required this.videoDuration,
    required this.createDateTime,
    required this.height,
    required this.width,
    required this.orientationHeight,
    required this.orientationWidth,
    required this.orientationSize,
    required this.modifiedDateTime,
    required this.size,
    this.latitude,
    this.longitude,
    this.thumbnail,
    this.file,
    this.title,
  });
  String id;
  String path;
  String type;
  Duration videoDuration;
  DateTime createDateTime;
  double? latitude;
  double? longitude;
  Uint8List? thumbnail;
  int height;
  int width;
  int orientationHeight;
  int orientationWidth;
  Size orientationSize;
  File? file;
  DateTime modifiedDateTime;
  String? title;
  Size size;

//TODO: added 'as String'

  factory PickedAssetModel.fromJson(Map<String, dynamic> json) =>
      PickedAssetModel(
        id: json['id'] as String,
        path: json['path'] as String,
        type: json['type'] as String,
        videoDuration: json['videoDuration'] as Duration,
        createDateTime: DateTime.parse(json['createDateTime'] as String),
        latitude: json['latitude'] as double,
        longitude: json['longitude'] as double,
        thumbnail: json['thumbnail'] as Uint8List,
        height: json['height'] as int,
        width: json['width'] as int,
        orientationHeight: json['orientationHeight'] as int,
        orientationWidth: json['orientationWidth'] as int,
        orientationSize: json['orientationSize'] as Size,
        file: json['file'] as File,
        modifiedDateTime: DateTime.parse(json['modifiedDateTime'] as String),
        title: json['title'] as String,
        size: json['size'] as Size,
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'path': path,
        'type': type,
        'videoDuration': videoDuration,
        'createDateTime':
            "${createDateTime.year.toString().padLeft(4, '0')}-${createDateTime.month.toString().padLeft(2, '0')}-${createDateTime.day.toString().padLeft(2, '0')}",
        'latitude': latitude,
        'longitude': longitude,
        'thumbnail': thumbnail,
        'height': height,
        'width': width,
        'orientationHeight': orientationHeight,
        'orientationWidth': orientationWidth,
        'orientationSize': orientationSize,
        'file': file,
        'modifiedDateTime':
            "${modifiedDateTime.year.toString().padLeft(4, '0')}-${modifiedDateTime.month.toString().padLeft(2, '0')}-${modifiedDateTime.day.toString().padLeft(2, '0')}",
        'title': title,
        'size': size,
      };
}
