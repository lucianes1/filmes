import 'package:filmes/application/ui/messages/messages_mixin.dart';
import 'package:filmes/models/genre_model.dart';
import 'package:filmes/services/genres/genre_service.dart';
import 'package:get/get.dart';

class MoviesController extends GetxController with MessagesMixin {
  final GenreService _genreService;
  final message = Rxn<MessageModel>();
  final genres = <GenreModel>[].obs;

  MoviesController({
    required GenreService genreService,
  }) : _genreService = genreService;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    messageListener(message);
  }

  @override
  Future<void> onReady() async {
    // TODO: implement onReady
    super.onReady();
    try {
      final genres = await _genreService.getGenres();
      this.genres.assignAll(genres);
    } catch (e) {
      message(
          MessageModel.error(title: 'Erro', message: 'Erro ao buscar Generos'));
    }
  }
}
