import 'dart:async';
import 'package:sembast/sembast.dart';
import 'package:sembast/sembast_io.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart';

class AppDatabase {

  static final AppDatabase _singleton = AppDatabase._();

  static AppDatabase get instance => _singleton;

  Completer<Database> _databaseOpenCompleter;

  AppDatabase._();

  Future<Database> get database async { 
    if(_databaseOpenCompleter == null) {
      _databaseOpenCompleter = Completer();

      _openDatabase();
    }
    return _databaseOpenCompleter.future;
  }

  Future _openDatabase() async {
    final appDocumentDirectory = await getApplicationDocumentsDirectory();

    final databasePath = join(appDocumentDirectory.path, 'Ingredients.db');

    final database = await databaseFactoryIo.openDatabase(databasePath);

    _databaseOpenCompleter.complete(database);
  }
}