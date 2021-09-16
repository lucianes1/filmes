import 'package:filmes/application/rest_client/rest_client.dart';
import 'package:filmes/models/genre_model.dart';
import 'package:firebase_remote_config/firebase_remote_config.dart';

import 'genres_respository.dart';

class GenresRepositoryImpl implements GenresRespository {
  final RestClient _restClient;

  GenresRepositoryImpl({required RestClient restClient})
      : _restClient = restClient;

  @override
  Future<List<GenreModel>> getGenres() async {
    final result =
        await _restClient.get<List<GenreModel>>('/genre/movie/list', query: {
      'api_key': RemoteConfig.instance.getString('api_token'),
    }, decoder: (data) {
      final resultData = data['genres'];
      if (resultData != null) {
        return resultData
            .map<GenreModel>((g) => GenreModel.fromMap(g))
            .toList();
      }
      return <GenreModel>[];
    });

    if (result.hasError) {
      print('Erro ao buscar Genres [${result.statusText}]');
      throw Exception('Erro ao buscar Genres');
    }

    return result.body ?? <GenreModel>[];
  }
}
