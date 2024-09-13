import 'package:bookia_app/core/functions/navigation.dart';
import 'package:bookia_app/core/utils/colors.dart';
import 'package:bookia_app/core/utils/text_style.dart';
import 'package:bookia_app/core/widgets/custom_button.dart';
import 'package:bookia_app/feature/auth/presentation/views/login_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';

class PasswordChangedView extends StatelessWidget {
  const PasswordChangedView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset('assets/image/Sticker.svg'),
            const Gap(35),
            Text(
              'Password Changed!',
              style: getHeadLineTextStyle(context),
            ),
            Text(
              textAlign: TextAlign.center,
              'Your password has been changed successfully.',
              style: getBodyTextStyle(context, color: AppColors.greyColor),
            ),
            const Gap(40),
            CustomButton(
                text: 'Back to Login',
                onTap: () {
                  pushAndRemoveUntil(context, const LoginView());
                })
          ],
        ),
      ),
    ));
  }
}
