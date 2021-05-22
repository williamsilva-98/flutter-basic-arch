import 'package:flutter/material.dart';
import 'package:flutter_arch/app/data/models/picsum_model.dart';
import 'package:flutter_arch/app/data/repositories/picsum_repository/ipicsum_repository.dart';

class PicsumViewModel {
  final IPicsumRepository picsumRepository;
  final picsumModel = ValueNotifier<List<PicsumModel>>([]);

  PicsumViewModel({@required this.picsumRepository});

  init() async {
    picsumModel.value = await picsumRepository.getPhoto();
  }
}
