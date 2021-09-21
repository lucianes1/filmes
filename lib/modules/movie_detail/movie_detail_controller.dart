import 'package:filmes/application/ui/loader/loader_mixin.dart';
import 'package:filmes/application/ui/messages/messages_mixin.dart';
import 'package:filmes/models/movie_detail_model.dart';
import 'package:filmes/services/movies/movies_service.dart';
import 'package:get/get.dart';

class MovieDetailController extends GetxController
    with LoaderMixin, MessagesMixin {
  final MoviesService _moviesService;

  MovieDetailController({required MoviesService moviesService})
      : _moviesService = moviesService;

  var loading = false.obs;
  var message = Rxn<MessageModel>();
  var movie = Rxn<MovieDetailModel>();

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    loaderListener(loading);
    messageListener(message);
  }

  @override
  Future<void> onReady() async {
    // TODO: implement onReady
    super.onReady();
    try {
      final movieId = Get.arguments;
      loading(true);
      final movieDetailData = await _moviesService.getDetail(movieId);
      movie.value = movieDetailData;
      loading(false);
      movie(movieDetailData);
    } catch (e, s) {
      print(e);
      print(s);
      loading(false);
      message(MessageModel.error(
          title: 'Erro', message: 'Erro ao buscar detalhe do filme'));
    }
  }
}
