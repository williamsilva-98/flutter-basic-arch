import 'package:flutter/material.dart';
import 'package:flutter_arch/app/data/models/picsum_model.dart';
import 'package:flutter_arch/app/viewmodel/picsum_viewmodel.dart';

class HomeController {
  final PicsumViewModel picsumViewModel;
  ValueNotifier<List<PicsumModel>> get photos => picsumViewModel.picsumModel;

  HomeController({@required this.picsumViewModel});

  getPhotos() {
    picsumViewModel.init();
  }
}
