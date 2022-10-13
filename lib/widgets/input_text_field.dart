import 'package:demo_mvvm/theme/app_colors.dart';
import 'package:demo_mvvm/theme/app_dimens.dart';
import 'package:flutter/material.dart';

class AppInputField extends StatelessWidget {
  final String inputTitle;
  final TextInputType inputType;
  final bool? showObscureText;
  final bool obscureText;
  final Function(String value)? onChanged;
  final String hint;

  const AppInputField({
    Key? key,
    this.inputTitle = '',
    this.hint = '',
    this.inputType = TextInputType.text,
    this.obscureText = false,
    this.showObscureText = false,
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(inputTitle, style: Theme.of(context).textTheme.headline3),
        SizedBox(height: AppDimens.h_4),
        SizedBox(
          height: AppDimens.h_54,
          child: TextFormField(
            keyboardType: inputType,
            obscureText: obscureText,
            onChanged: onChanged,
            style: Theme.of(context).textTheme.bodyText2,
            decoration: InputDecoration(
                hintText: hint,
                hintStyle: Theme.of(context)
                    .textTheme
                    .bodyText2
                    ?.copyWith(color: AppColors.hint),
                border: appInputBorder,
                disabledBorder: appInputBorder,
                enabledBorder: appInputBorder,
                focusedBorder: appInputBorder),
          ),
        )
      ],
    );
  }

  static InputBorder appInputBorder = OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(AppDimens.r_8)),
    borderSide: const BorderSide(color: AppColors.inputBorder),
  );
}
