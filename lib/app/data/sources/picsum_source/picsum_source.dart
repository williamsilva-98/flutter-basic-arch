import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_arch/app/data/client/ihttp_client.dart';
import 'package:flutter_arch/app/data/models/picsum_model.dart';
import 'ipicsum_source.dart';

class PicsumSource implements IPicsumSource {
  final IHttpClient httpClient;

  PicsumSource({@required this.httpClient});

  @override
  Future<List<PicsumModel>> getPhotos() async {
    final response = await httpClient.get('https://picsum.photos/v2/list');

    //print(response);

    final List<PicsumModel> list = [];

    response.map((e) => list.add(PicsumModel.fromJson(e))).toList();

    return list;
  }
}
