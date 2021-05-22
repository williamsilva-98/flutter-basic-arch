import 'package:flutter_arch/app/data/models/picsum_model.dart';

abstract class IPicsumSource {
  Future<List<PicsumModel>> getPhotos();
}
