import 'package:dio/dio.dart';
import 'package:deck_cosmic/features/heroes/data/model/hero_model.dart';
import 'package:deck_cosmic/core/error/exceptions.dart';

import 'hero_remote_datasource.dart';


// 2. A implementação real que usa o Dio
class HeroRemoteDataSourceImpl implements IHeroRemoteDataSource {
  final Dio dio;

  HeroRemoteDataSourceImpl({required this.dio});

  final String _endpoint = '/hero';

  @override
  Future<List<HeroModel>> getAllHeroes() async {
    try {
      final response = await dio.get(_endpoint);

      if (response.statusCode == 200) {
        final List<dynamic> jsonList = response.data as List;
        final heroModels = jsonList
            .map((json) => HeroModel.fromJson(json as Map<String, dynamic>))
            .toList();

        return heroModels;
      } else {
        throw ServerException('Falha ${response.statusCode} do servidor:  ${response.statusMessage}');
      }
    } on DioException catch (e) {
      throw ServerException(e.message ?? 'Erro de rede');
    } catch (e) {
      throw CacheException(e.toString());
    }
  }
}