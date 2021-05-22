import 'package:flutter_arch/app/data/models/picsum_model.dart';
import 'package:flutter_arch/app/data/repositories/picsum_repository/ipicsum_repository.dart';
import 'package:flutter_arch/app/viewmodel/picsum_viewmodel.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

class PicsumRepositoryMock extends Mock implements IPicsumRepository {}

main() {
  PicsumViewModel viewModel;
  IPicsumRepository repository;
  List<PicsumModel> list = [];

  setUp(() {
    repository = PicsumRepositoryMock();
    viewModel = PicsumViewModel(picsumRepository: repository);
  });

  test('should call the repository', () async {
    // act
    await viewModel.init();

    // assert
    verify(repository.getPhoto());
  });

  test('should return a list of PicsumModel', () async {
    // arrange
    when(repository.getPhoto()).thenAnswer((_) async => list);

    // act
    await viewModel.init();

    // assert
    expect(viewModel.picsumModel.value, isA<List<PicsumModel>>());
  });
}
