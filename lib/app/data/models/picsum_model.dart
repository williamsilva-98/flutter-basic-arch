import 'package:flutter/material.dart';

class PicsumModel {
  final String author;
  final String downloadUrl;

  PicsumModel({@required this.author, @required this.downloadUrl});

  factory PicsumModel.fromJson(Map<String, dynamic> json) {
    return PicsumModel(
      author: json['author'],
      downloadUrl: json['download_url'],
    );
  }
}
