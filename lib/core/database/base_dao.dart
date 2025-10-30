import 'package:flutter/material.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'dart:async';
import 'contratos.dart';

abstract class BaseDao{
  static const databaseVersion = 1;
  static const _databaseName = 'deck_database.db';

  Database? _database;

  @protected
  Future<Database> getDb() async {
    _database ??= await _getDatabase();
    return _database!;
  }

  Future<Database> _getDatabase() async {
    return openDatabase(
      join(await getDatabasesPath(), _databaseName),
      onCreate: (db, version) async {
        final batch = db.batch();
        _createTables(batch);
        await batch.commit();
      },
      version: databaseVersion,
    );
  }

  void _createTables(Batch batch) {
    batch.execute(
      '''
      CREATE TABLE ${Contratos.heroTable}(
        ${Contratos.heroIdColumn} TEXT PRIMARY KEY,
        ${Contratos.heroNameColumn} TEXT NOT NULL,
        ${Contratos.heroJsonColumn} TEXT NOT NULL 
      ); 
      ''',
    );

    batch.execute(
      '''
      CREATE TABLE ${Contratos.myCardsTable}(
         ${Contratos.myCardsIdColumn} INTEGER PRIMARY KEY AUTOINCREMENT,
         ${Contratos.myCardsHeroIdColumn} TEXT NOT NULL,
         ${Contratos.myCardsDataObtencaoColumn} INTEGER NOT NULL,
         ${Contratos.myCardsDataObtencaoFormatColumn} TEXT NOT NULL,
         ${Contratos.myCardsUserIdColumn} INTEGER,
         FOREIGN KEY (${Contratos.myCardsHeroIdColumn})
           REFERENCES ${Contratos.heroTable}(${Contratos.heroIdColumn})
           ON DELETE CASCADE 
      );
      ''',
    );
  }
}