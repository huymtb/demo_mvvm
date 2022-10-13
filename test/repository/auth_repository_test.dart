import 'package:demo_mvvm/models/login_result_model.dart';
import 'package:demo_mvvm/services/api/repositories/auth_repository.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  late AuthRepository authRepository;

  setUp(() async {
    authRepository = AuthRepository();
  });

  group('AuthRepository - Test loginSuccess()', () {
    test('login should return error code = 200', () async {
      final LoginResultModel? result =
          await authRepository.login('hello@example.com', '123456');

      // Api call should be successfully
      expect(result, isNotNull);
      expect(result?.code, 200);
      expect(result?.errorMessage, isNull);
    });
  });

  group('AuthRepository - Test loginFailed()', () {
    test('login should return error code = 201 -- wrong email', () async {
      final LoginResultModel? result =
          await authRepository.login('hello1@example.com', '123456');

      // Api call should be successfully
      expect(result, isNotNull);
      expect(result?.code, 201);
      expect(result?.errorMessage, isNotNull);
    });

    test('login should return error code = 201 -- wrong password', () async {
      final LoginResultModel? result =
      await authRepository.login('hello@example.com', '1234567');

      // Api call should be successfully
      expect(result, isNotNull);
      expect(result?.code, 201);
      expect(result?.errorMessage, isNotNull);
    });
  });
}
