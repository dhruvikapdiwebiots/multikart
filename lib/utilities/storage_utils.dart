import 'dart:convert';

import 'package:get_storage/get_storage.dart';

final _storage = GetStorage();

dynamic getStorage(String name) {
  dynamic info = _storage.read(name);
  return info != null ? json.decode(info) : info;

  //ex : helper.getStorage('authToken');
}

Future<dynamic> writeStorage(String key, dynamic value) async {
  dynamic object = value != null ? json.encode(value) : value;
  return await _storage.write(key, object);

  //ex : await helper.writeStorage(session.id, data['id']);
}

dynamic removeSpecificKeyStorage(String key) {
  _storage.remove(key);

  //ex : helper.removeSpecificKeyStorage(session.authToken);
}

clearStorage() {
  _storage.erase();

  //ex : helper.clearStorage();
}
