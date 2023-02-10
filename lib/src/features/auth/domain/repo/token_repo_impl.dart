import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:gpt_chatty/src/features/auth/domain/repo/token_repo.dart';

class TokenRepoImpl implements TokenRepo {
  final FlutterSecureStorage storage;

  String get _tokenKey => 'api-token';

  TokenRepoImpl(this.storage);

  @override
  Future<String?> getApiToken() => storage.read(key: _tokenKey);

  @override
  Future<void> removeToken() => storage.delete(key: _tokenKey);

  @override
  Future<void> setApiToken(String token) =>
      storage.write(key: _tokenKey, value: token);
}
