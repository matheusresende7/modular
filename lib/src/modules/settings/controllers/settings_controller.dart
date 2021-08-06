import 'package:get/get.dart';
import 'package:get/state_manager.dart';
import 'package:modular/src/app/app_themes.dart';

class SettingsController extends GetxController {



  //**************************SWITCH DARK MODE**********************************
  bool darkModeAtivado = false;

  void changeDefaultTheme () {
    Get.changeTheme(AppTheme.defaultTheme);
    darkModeAtivado = false;
  }

  void changeDarkTheme () {
    Get.changeTheme(AppTheme.darkTheme);
    darkModeAtivado = true;
  }

  void ativarDarkMode () {
    darkModeAtivado ? changeDefaultTheme() : changeDarkTheme();
  }



}