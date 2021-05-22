import 'package:flutter_arch/app/data/models/picsum_model.dart';

abstract class IPicsumRepository {
  Future<List<PicsumModel>> getPhoto();
}
