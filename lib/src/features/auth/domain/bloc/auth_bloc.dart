import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gpt_chatty/src/features/auth/domain/repo/token_repo.dart';

part 'auth_bloc.freezed.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final TokenRepo tokenRepo;
  AuthBloc(this.tokenRepo) : super(const AuthState.initial()) {
    on<AuthEvent>(
      (event, emit) => event
          .when<Stream<AuthState>>(
            load: _onLoad,
            authorize: _onAuthorize,
            unauthorize: _onUnauthorize,
          )
          .forEach(emit),
    );
  }

  Stream<AuthState> _onLoad() async* {
    if (state.isLoading) return;
    yield const AuthState.loading();
    final token = await tokenRepo.getApiToken() ?? '';
    if (token.isNotEmpty) {
      yield const AuthState.authorized();
    } else {
      yield const AuthState.unauthorized();
    }
  }

  Stream<AuthState> _onAuthorize(String token) async* {
    await tokenRepo.setApiToken(token);
    yield const AuthState.authorized();
  }

  Stream<AuthState> _onUnauthorize() async* {
    await tokenRepo.removeToken();
    yield const AuthState.unauthorized();
  }
}

@freezed
class AuthState with _$AuthState {
  bool get isLoaded => maybeWhen(
        authorized: () => true,
        unauthorized: () => true,
        orElse: () => false,
      );

  bool get isLoading => maybeWhen(
        loading: () => true,
        orElse: () => false,
      );

  bool get isAuthorized => maybeWhen(
        authorized: () => true,
        orElse: () => false,
      );

  bool get isUnauthorized => maybeWhen(
        unauthorized: () => true,
        orElse: () => false,
      );

  const AuthState._();
  const factory AuthState.initial() = _initial;
  const factory AuthState.loading() = _loading;
  const factory AuthState.authorized() = _authorized;
  const factory AuthState.unauthorized() = _unauthorized;
}

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.load() = _load;
  const factory AuthEvent.authorize(String token) = _authorize;
  const factory AuthEvent.unauthorize() = _unauthorize;
}
