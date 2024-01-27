import 'package:get_storage/get_storage.dart';

class GLocalStorage {
  static final GLocalStorage _instance = GLocalStorage._internal();
  factory GLocalStorage() {
    return _instance;
  }
  GLocalStorage._internal();
  final _storage = GetStorage();

  // Method to save data
  Future<void> saveData<G>(String key, G value) async {
    await _storage.write(key, value);
  }

  // Method of reading data
  G? readData<G>(String key) {
    return _storage.read(key);
  }
  // Method of removing data

  Future<void> removeData(String key) async {
    await _storage.remove(key);
  }

  // Clear all data in storage
  Future<void> clearAll() async {
    await _storage.erase();
  }
}
