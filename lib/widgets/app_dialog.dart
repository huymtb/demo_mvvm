import 'package:demo_mvvm/generated/l10n.dart';
import 'package:demo_mvvm/theme/app_dimens.dart';
import 'package:flutter/material.dart';

class AppDialog extends StatelessWidget {
  final String? title;
  final String? message;

  const AppDialog({
    Key? key,
    this.title,
    this.message,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SimpleDialog(
      insetPadding: EdgeInsets.all(AppDimens.h_16),
      titlePadding: title == null
          ? EdgeInsets.zero
          : EdgeInsets.only(
              top: AppDimens.h_24, left: AppDimens.h_16, right: AppDimens.h_16),
      title: title != null
          ? Text(
              title ?? "",
              style: Theme.of(context).textTheme.headline3,
            )
          : const SizedBox(),
      contentPadding: EdgeInsets.all(AppDimens.h_16),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppDimens.r_8)),
      children: [
        if (message != null) ...[
          Text(
            message!,
            // textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.bodyText2,
          ),
          SizedBox(
            height: AppDimens.h_24,
          ),
        ],
        GestureDetector(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: Text(
            S.current.ok,
            style: Theme.of(context).textTheme.button,
          ),
        )
      ],
    );
  }
}
