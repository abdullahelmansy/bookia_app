import 'package:bookia_app/core/functions/navigation.dart';
import 'package:bookia_app/core/utils/text_style.dart';
import 'package:bookia_app/feature/info/welcome_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      pushReplacement(context, const WelcomeView());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset('assets/image/logo.svg'),
            Text(
              'Order Your Book Now!',
              style: getBodyTextStyle(
                context,
                fontSize: 20,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
