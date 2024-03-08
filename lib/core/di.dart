import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

final config = GetIt.instance;
void setup() async {
  config.registerSingleton<SharedPreferences>(
    await SharedPreferences.getInstance(),
  );
}
