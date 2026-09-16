import 'package:maple_file/app/router.dart';

import "pages/setting.dart";
import "pages/setting_backup.dart";
import "pages/setting_locale.dart";
import "pages/setting_theme.dart";

Future<void> init(CustomRouter router) async {
  router.registerMany({
    '/setting': (context) {
      return const SettingScreen();
    },
    '/setting/theme': (context) {
      return const SettingThemeScreen();
    },
    '/setting/locale': (context) {
      return const SettingLocaleScreen();
    },
    '/setting/backup': (context) {
      return const SettingBackupScreen();
    },
  });
}
