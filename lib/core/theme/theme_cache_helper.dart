
import 'package:shared_preferences/shared_preferences.dart';

class ThemeCacheHelper{

  static Future<void> cacheThemeIndex(int themeIndex) async{
    final sharedPreference = await SharedPreferences.getInstance();
    sharedPreference.setInt("THEME_INDEX", themeIndex);
  }

  static Future<int> getCachedThemeIndex() async{
    final sharedPreference = await SharedPreferences.getInstance();
    final themeIndex = sharedPreference.getInt("THEME_INDEX");
    if(themeIndex != null){
      return themeIndex;
    }else{
      return 0;
    }
  }

}