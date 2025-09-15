import 'dart:ffi';

import 'package:e_tracker_upi/domain/repo/preference_repo.dart';
import 'package:shared_preferences/shared_preferences.dart';

class PreferenceRepoImpl extends PreferenceRepo{
  final SharedPreferences sharedPreferences;

  PreferenceRepoImpl({required this.sharedPreferences});
  @override
  Future<String> getUserId() async{
    final userId =  await sharedPreferences.getString("userId");
    print("getUserId ${userId}");
    return userId ?? "" ;
  }

  @override
  Future<void> saveUserId(String userId) async{
    print("saveUserId ${userId}");
  await  sharedPreferences.setString("userId", userId);
  }

}