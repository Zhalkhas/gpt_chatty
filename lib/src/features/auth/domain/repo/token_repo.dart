abstract class TokenRepo {
  Future<String?> getApiToken();
  Future<void> setApiToken(String token);
  Future<void> removeToken();
}
