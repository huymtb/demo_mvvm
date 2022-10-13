import 'package:demo_mvvm/features/login/login_page_view_model.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  late LoginPageViewModel viewModel;
  
  setUp(() async {
    viewModel = LoginPageViewModel();
  });
  
  group('Input field - Test email and password input', () {
    test('email input - valid', () {
      viewModel.onEmailChanged('hello@example.com');

      expect(viewModel.isEmailValidate, true);
    });

    test('email input - invalid', () {
      viewModel.onEmailChanged('hello@example');

      expect(viewModel.isEmailValidate, false);
    });

    test('password input - valid', () {
      viewModel.onPasswordChanged('123456');

      expect(viewModel.isPasswordValidate, true);
    });

    test('password input - invalid', () {
      viewModel.onPasswordChanged('12345');

      expect(viewModel.isPasswordValidate, false);
    });
  });
}