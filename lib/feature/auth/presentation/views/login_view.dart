import 'package:bookia_app/core/functions/navigation.dart';
import 'package:bookia_app/core/utils/colors.dart';
import 'package:bookia_app/core/utils/text_style.dart';
import 'package:bookia_app/core/widgets/custom_button.dart';
import 'package:bookia_app/core/widgets/nav_bar_widget.dart';
import 'package:bookia_app/feature/auth/presentation/views/forget_password_view.dart';
import 'package:bookia_app/feature/auth/presentation/views/register_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';

import '../../../../core/widgets/back_button_widget.dart';
import '../widgets/social_login_widegt.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: AppColors.whiteColor,
        automaticallyImplyLeading: false,
        title: const Row(
          children: [
            BackButtonWidegt(),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(bottom: 10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Don’t have an account?',
              style: getSmallTextStyle(context),
            ),
            TextButton(
              onPressed: () {
                pushReplacement(context, const RegisterView());
              },
              child: Text(
                'Register Now',
                style:
                    getSmallTextStyle(context, color: AppColors.primaryColor),
              ),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          children: [
            Text(
              'Welcome back! Glad to see you, Again!',
              style: getHeadLineTextStyle(context),
            ),
            const Gap(32),
            TextFormField(
              decoration: const InputDecoration(
                hintText: 'Enter your email',
              ),
            ),
            const Gap(15),
            TextFormField(
              decoration: InputDecoration(
                  hintText: 'Enter your password',
                  suffixIconConstraints: const BoxConstraints(
                    maxWidth: 40,
                    maxHeight: 12,
                  ),
                  suffixIcon: Padding(
                    padding: const EdgeInsets.only(right: 18.0),
                    child: SvgPicture.asset(
                      'assets/icons/fluent_eye-20-filled.svg',
                      width: 20,
                      height: 20,
                    ),
                  )),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {
                    push(context, const ForgetPasswordView());
                  },
                  child: Text(
                    'Forgot Password?',
                    style: getSmallTextStyle(context),
                  ),
                ),
              ],
            ),
            const Gap(30),
            CustomButton(
                text: 'Login',
                onTap: () {
                  pushAndRemoveUntil(
                    context,
                    const NavBarWidget(),
                  );
                }),
            const Gap(34),
            Row(
              children: [
                const Expanded(child: Divider()),
                const Gap(10),
                Text(
                  'Or Login with',
                  style: getSmallTextStyle(context),
                ),
                const Gap(10),
                const Expanded(child: Divider()),
              ],
            ),
            const Gap(20),
            const SocialLoginWidget()
          ],
        ),
      ),
    );
  }
}
