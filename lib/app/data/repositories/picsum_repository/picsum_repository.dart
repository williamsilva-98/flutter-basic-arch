import 'package:flutter/material.dart';
import 'package:flutter_arch/app/data/models/picsum_model.dart';
import 'package:flutter_arch/app/data/sources/picsum_source/ipicsum_source.dart';

import 'ipicsum_repository.dart';

class PicsumRepository implements IPicsumRepository {
  final IPicsumSource picsumSource;

  PicsumRepository({@required this.picsumSource});

  @override
  Future<List<PicsumModel>> getPhoto() async {
    return await picsumSource.getPhotos();
  }
}
