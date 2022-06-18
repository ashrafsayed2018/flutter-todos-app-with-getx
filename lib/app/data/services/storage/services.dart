import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:getx_todo_list/app/core/utils/keys.dart';

class StorageService extends GetxService {
  late GetStorage _box;
  Future<StorageService> init() async {
    _box = GetStorage();
    await _box.writeIfNull(taskKey, []);
    return this;
  }

  // read the data
  T read<T>(String key) {
    return _box.read(key);
  }

  // write the data
  void write(String key, dynamic value) async {
    await _box.write(key, value);
  }
}
