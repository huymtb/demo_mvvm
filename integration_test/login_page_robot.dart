import 'package:demo_mvvm/generated/l10n.dart';
import 'package:demo_mvvm/widgets/app_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

class LoginPageRobot {
  final WidgetTester tester;

  LoginPageRobot(this.tester);

  Future<void> testLoginSuccess() async {
    final BuildContext context = tester.firstElement(find.byType(Scaffold));
    // Verify input fields.
    var emailField = find.byKey(const Key('email'));
    expect(emailField, findsOneWidget);
    var passwordField = find.byKey(const Key('password'));
    expect(emailField, findsOneWidget);

    await tester.enterText(emailField, 'hello@example.com');
    expect(find.text('hello@example.com'), findsOneWidget);

    await tester.enterText(passwordField, '123456');

    var button = find.byKey(const Key('loginButton'));
    expect(button, findsOneWidget);

    await tester.tap(button);
    await tester.pump(const Duration(milliseconds: 2000));

    expect(find.byType(AppDialog), findsOneWidget);
    expect(find.text(S.of(context).login_success), findsOneWidget);
  }
}
