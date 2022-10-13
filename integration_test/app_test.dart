import 'package:demo_mvvm/main.dart' as app;
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

import 'login_page_robot.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding binding =
      IntegrationTestWidgetsFlutterBinding.ensureInitialized();
  binding.framePolicy = LiveTestWidgetsFlutterBindingFramePolicy.fullyLive;

  LoginPageRobot loginPageTest;

  testWidgets('login page',
      (tester) async {
    app.main();
    await tester.pumpAndSettle();

    loginPageTest = LoginPageRobot(tester);

    await loginPageTest.testLoginSuccess();
  });
}
