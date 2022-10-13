import 'package:demo_mvvm/generated/l10n.dart';
import 'package:demo_mvvm/infrastructure/constants.dart';
import 'package:demo_mvvm/infrastructure/routes/routes_name.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(milliseconds: Constants.timeDelay), () {
      Navigator.of(context).pushReplacementNamed(RoutesName.login);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Text(
          S.current.app,
          style: Theme.of(context).textTheme.headline1,
        ),
      ),
    );
  }
}
