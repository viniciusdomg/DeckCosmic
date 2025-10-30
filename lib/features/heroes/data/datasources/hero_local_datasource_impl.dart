import 'dart:convert';
import 'package:deck_cosmic/core/database/contratos.dart';
import 'package:deck_cosmic/core/database/base_dao.dart';
import 'package:deck_cosmic/features/heroes/data/datasources/hero_local_datasource.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../model/hero_model.dart';
import 'package:sqflite/sqflite.dart';

class HeroLocalDataSourceImpl extends BaseDao implements IHeroLocalDataSource {
  final SharedPreferences sharedPreferences;

  HeroLocalDataSourceImpl({required this.sharedPreferences});

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

      batch.insert(Contratos.heroTable, data,
          conflictAlgorithm: ConflictAlgorithm.replace);
    }

    await batch.commit(noResult: true);
  }

  @override
  Future<List<HeroModel>?> getLastHeroList(
      {required int page, required int limit}) async {
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

  @override
  Future<HeroModel?> getHeroById(int id) async {
    final db = await getDb();
    print("buscando heroi by id: $id");
    final List<Map<String, dynamic>> maps = await db.query(
      Contratos.heroTable,
      where: '${Contratos.heroIdColumn} = ?',
      whereArgs: [id.toString()],
    );

    if (maps.isNotEmpty) {
      final jsonString = maps.first[Contratos.heroJsonColumn] as String;
      final heroMap = jsonDecode(jsonString) as Map<String, dynamic>;
      return HeroModel.fromJson(heroMap);
    }
    return null;
  }

  @override
  Future<List<int>> getAllHeroIds() async {
    final db = await getDb();
    final List<Map<String, dynamic>> maps = await db.query(
      Contratos.heroTable,
      columns: [Contratos.heroIdColumn],
    );

    var listInteiros = maps.map((map) => int.parse(map[Contratos.heroIdColumn])).toList();
    return listInteiros;
  }

  Future<int> getHeroesCount() async {
    final db = await getDb();
    final result = await db.rawQuery('SELECT COUNT(*) FROM ${Contratos.heroTable}');
    return Sqflite.firstIntValue(result) ?? 0;
  }

  @override
  Future<void> addHeroToMyCards(String heroId) async {
    final db = await getDb();
    await db.insert(
      Contratos.myCardsTable,
      {
        Contratos.myCardsHeroIdColumn: heroId,
        Contratos.myCardsDataObtencaoColumn: DateTime.now().millisecondsSinceEpoch,
        Contratos.myCardsDataObtencaoFormatColumn: DateTime.now().toIso8601String(),
      },
      conflictAlgorithm: ConflictAlgorithm.ignore,
    );
  }

  @override
  Future<List<HeroModel>> getMyCards() async {
    final db = await getDb();
    final List<Map<String, dynamic>> maps = await db.rawQuery('''
      SELECT T1.* FROM ${Contratos.heroTable} T1
      INNER JOIN ${Contratos.myCardsTable} T2 ON T1.${Contratos.heroIdColumn} = T2.${Contratos.myCardsHeroIdColumn}
    ''');

    return maps.map((map) {
      final jsonString = map[Contratos.heroJsonColumn] as String;
      final heroMap = jsonDecode(jsonString) as Map<String, dynamic>;
      return HeroModel.fromJson(heroMap);
    }).toList();
  }

  @override
  Future<int> getMyCardsCount() async {
     final db = await getDb();
    final result = await db.rawQuery('SELECT COUNT(*) FROM ${Contratos.myCardsTable}');
    return Sqflite.firstIntValue(result) ?? 0;
  }

  @override
  Future<void> removeHeroFromMyCards(String heroId) async {
    final db = await getDb();
    await db.delete(
      Contratos.myCardsTable,
      where: '${Contratos.myCardsHeroIdColumn} = ?',
      whereArgs: [heroId],
    );
  }
  
  @override
  Future<Map<String, dynamic>> getDailyCardStatus() async {
    final heroId = sharedPreferences.getInt(PREF_DAILY_HERO_ID);
    final date = sharedPreferences.getString(PREF_DAILY_HERO_DATE);
    final hasCollected = sharedPreferences.getBool(PREF_HAS_COLLECTED) ?? false;
    return {'heroId': heroId, 'date': date, 'hasCollected': hasCollected};
  }

  @override
  Future<void> setDailyCardStatus(int heroId, String date, bool hasCollected) async {
    await sharedPreferences.setInt(PREF_DAILY_HERO_ID, heroId);
    await sharedPreferences.setString(PREF_DAILY_HERO_DATE, date);
    await sharedPreferences.setBool(PREF_HAS_COLLECTED, hasCollected);
  }
  
  @override
  Future<void> setHasCollected(bool hasCollected) async {
    await sharedPreferences.setBool(PREF_HAS_COLLECTED, hasCollected);
  }
}
