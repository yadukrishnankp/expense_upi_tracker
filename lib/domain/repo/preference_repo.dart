

abstract class PreferenceRepo{
  Future<void> saveUserId(String userId);
  Future<String?>getUserId();
}