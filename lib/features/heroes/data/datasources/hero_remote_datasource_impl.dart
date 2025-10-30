import 'package:dio/dio.dart';
import 'package:deck_cosmic/features/heroes/data/model/hero_model.dart';
import 'package:deck_cosmic/core/error/exceptions.dart';

import 'hero_remote_datasource.dart';


class HeroRemoteDataSourceImpl implements IHeroRemoteDataSource {
  final Dio dio;

  HeroRemoteDataSourceImpl({required this.dio});

  final String _endpoint = '/hero';

  @override
  Future<List<HeroModel>> getAllHeroes({required int page, required int limit}) async {
    try {
      final String url = '$_endpoint?_page=$page&_per_page=$limit';
      print("url $url");

      final response = await dio.get(url);
      print("reponse $response");
      if (response.statusCode == 200 && response.data != null) {
        print("entrando no if");

        final List<dynamic> jsonList = response.data['data'] as List;
        print("criando $jsonList");

        final heroModels = jsonList
            .map((json) => HeroModel.fromJson(json as Map<String, dynamic>))
            .toList();
        print("parseando valores para model $heroModels");

        return heroModels;
      } else {
        print("erro ${response.statusCode}");
        throw ServerException('Falha ${response.statusCode} do servidor:  ${response.statusMessage}');
      }
    } on DioException catch (e) {
      print("erro ${e.message}");
      throw ServerException(e.message ?? 'Erro de rede');
    } catch (e) {
      print("erro geral ${e.toString()}");
      throw ServerException(e.toString());
    }
  }
}