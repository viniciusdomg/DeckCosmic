import 'dart:convert';
import 'package:deck_cosmic/core/database/contratos.dart';
import 'package:deck_cosmic/core/database/base_dao.dart';
import 'package:deck_cosmic/features/heroes/data/datasources/hero_local_datasource.dart';
import '../model/hero_model.dart';
import 'package:sqflite/sqflite.dart';

class HeroLocalDataSourceImpl extends BaseDao implements IHeroLocalDataSource {

  HeroLocalDataSourceImpl();

  @override
  Future<void> cacheHeroList(List<HeroModel> heroesToCache) async {
    if (heroesToCache.isEmpty) return;

    final Database database = await getDb();
    
    final batch = database.batch();

    for (var hero in heroesToCache) {
      final heroMap = hero.toJson();
      final jsonString = jsonEncode(heroMap);

      final data = {
        Contratos.heroIdColumn: hero.id,
        Contratos.heroNameColumn: hero.name,
        Contratos.heroJsonColumn: jsonString
      };
      
      batch.insert(Contratos.heroTable, data, conflictAlgorithm: ConflictAlgorithm.replace);
    }
    
    await batch.commit(noResult: true);
  }

  @override
  Future<List<HeroModel>?> getLastHeroList({required int page, required int limit}) async {
    final Database db = await getDb();
    final offset = (page - 1) * limit;

    final List<Map<String, dynamic>> maps = await db.query(
      Contratos.heroTable,
      limit: limit,
      offset: offset,
      orderBy: Contratos.heroNameColumn,
    );

    if (maps.isEmpty) {
      return null;
    }

    return maps.map((map) {
      final jsonString = map[Contratos.heroJsonColumn] as String;
      final heroMap = jsonDecode(jsonString) as Map<String, dynamic>;
      return HeroModel.fromJson(heroMap);
    }).toList();
  }

}