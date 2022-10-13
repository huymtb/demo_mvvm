import 'package:demo_mvvm/features/login/login_page_view_model.dart';
import 'package:demo_mvvm/generated/l10n.dart';
import 'package:demo_mvvm/infrastructure/routes/routes.dart';
import 'package:demo_mvvm/infrastructure/routes/routes_name.dart';
import 'package:demo_mvvm/theme/theme_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:provider/provider.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => LoginPageViewModel()),
      ],
      child: MaterialApp(
        localizationsDelegates: const [
          S.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        debugShowCheckedModeBanner: false,
        themeMode: ThemeMode.light,
        theme: ThemeConfig.lightTheme,
        initialRoute: RoutesName.splash,
        onGenerateRoute: Routes.generateRoute,
      ),
    );
  }
}
