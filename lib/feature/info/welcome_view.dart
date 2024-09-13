import 'package:bookia_app/core/functions/navigation.dart';
import 'package:bookia_app/core/utils/colors.dart';
import 'package:bookia_app/core/utils/text_style.dart';
import 'package:bookia_app/core/widgets/custom_button.dart';
import 'package:bookia_app/feature/auth/presentation/views/login_view.dart';
import 'package:bookia_app/feature/auth/presentation/views/register_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';

class WelcomeView extends StatefulWidget {
  const WelcomeView({super.key});

  @override
  State<WelcomeView> createState() => _WelcomeViewState();
}

class _WelcomeViewState extends State<WelcomeView> {
  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: Image.asset(
              'assets/image/welcome_bg.png',
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(22.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Spacer(flex: 2),
                SvgPicture.asset('assets/image/logo.svg'),
                const Gap(50),
                Text(
                  'Order Your Book Now!',
                  style: getBodyTextStyle(
                    context,
                    fontSize: 20,
                  ),
                ),
                const Spacer(flex: 4),
                CustomButton(
                    text: 'Login',
                    onTap: () {
                      push(context, const LoginView());
                    }),
                const Gap(15),
                CustomButton(
                  text: 'Register',
                  textStyle: getBodyTextStyle(context),
                  color: AppColors.whiteColor,
                  onTap: () {
                    push(context, const RegisterView());
                  },
                ),
                const Spacer(flex: 1),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
