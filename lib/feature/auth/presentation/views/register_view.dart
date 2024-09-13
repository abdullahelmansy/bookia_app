import 'package:bookia_app/core/functions/navigation.dart';
import 'package:bookia_app/core/utils/colors.dart';
import 'package:bookia_app/core/utils/text_style.dart';
import 'package:bookia_app/core/widgets/custom_button.dart';
import 'package:bookia_app/feature/auth/presentation/views/login_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';

import '../../../../core/widgets/back_button_widget.dart';
import '../widgets/social_login_widegt.dart';

class RegisterView extends StatefulWidget {
  const RegisterView({super.key});

  @override
  State<RegisterView> createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView> {
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
                pushReplacement(
                  context,
                  const LoginView(),
                );
              },
              child: Text(
                'Login Now',
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
              'Hello! Register to get started',
              style: getHeadLineTextStyle(context),
            ),
            const Gap(32),
            TextFormField(
              decoration: const InputDecoration(
                hintText: 'Username',
              ),
            ),
            const Gap(15),
            TextFormField(
              decoration: const InputDecoration(
                hintText: 'Email',
              ),
            ),
            const Gap(15),
            TextFormField(
              decoration: InputDecoration(
                  hintText: 'Password',
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
            const Gap(15),
            TextFormField(
              decoration: InputDecoration(
                  hintText: 'Confirm password',
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
            const Gap(30),
            CustomButton(text: 'Register', onTap: () {}),
            const Gap(34),
            Row(
              children: [
                const Expanded(child: Divider()),
                const Gap(10),
                Text(
                  'Or Register with',
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
