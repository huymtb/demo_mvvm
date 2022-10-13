import 'package:demo_mvvm/features/login/login_page_view_model.dart';
import 'package:demo_mvvm/generated/l10n.dart';
import 'package:demo_mvvm/infrastructure/utils.dart';
import 'package:demo_mvvm/theme/app_colors.dart';
import 'package:demo_mvvm/theme/app_dimens.dart';
import 'package:demo_mvvm/widgets/input_text_field.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0.5,
        title: Text(
          S.current.login,
          style: Theme.of(context).textTheme.headline2,
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: AppDimens.h_16),
        child: ChangeNotifierProvider<LoginPageViewModel>(
          create: (BuildContext context) => LoginPageViewModel(),
          child: Consumer<LoginPageViewModel>(builder: (context, value, _) {
            return Column(
              children: [
                SizedBox(height: AppDimens.h_16),
                AppInputField(
                  inputTitle: S.current.email,
                  hint: S.current.email_hint,
                  inputType: TextInputType.emailAddress,
                  onChanged: (email) {
                    value.onEmailChanged(email);
                  },
                ),
                SizedBox(height: AppDimens.h_16),
                AppInputField(
                  inputTitle: S.current.password,
                  obscureText: true,
                  hint: S.current.password_hint,
                  onChanged: (password) {
                    value.onPasswordChanged(password);
                  },
                ),
                SizedBox(height: AppDimens.h_48),
                GestureDetector(
                  onTap: () {
                    if (value.isEmailValidate &&
                        value.isPasswordValidate &&
                        !value.isLoading) {
                      value.login(context);
                    }
                  },
                  child: Container(
                    height: AppDimens.h_48,
                    width: getScreenWidth(context),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: value.isEmailValidate && value.isPasswordValidate
                            ? AppColors.primary
                            : AppColors.hint,
                        borderRadius: BorderRadius.circular(AppDimens.r_8)),
                    child: value.isLoading
                        ? const CupertinoActivityIndicator()
                        : Text(
                            S.current.login,
                            style: Theme.of(context)
                                .textTheme
                                .button
                                ?.copyWith(color: Colors.white),
                          ),
                  ),
                )
              ],
            );
          }),
        ),
      ),
    );
  }
}
