import 'package:bookia_app/core/functions/navigation.dart';
import 'package:bookia_app/core/utils/colors.dart';
import 'package:bookia_app/core/utils/text_style.dart';
import 'package:bookia_app/core/widgets/custom_button.dart';
import 'package:bookia_app/feature/profile/presentation/views/profile_view.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../core/widgets/back_button_widget.dart';

class UpdateProfileView extends StatelessWidget {
  const UpdateProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.whiteColor,
        automaticallyImplyLeading: false,
        title: const Row(
          children: [
            BackButtonWidegt(),
          ],
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Update Profile',
              style: getHeadLineTextStyle(context),
            ),
            const Gap(36),
            TextFormField(
              decoration: InputDecoration(
                  hintText: 'Username',
                  hintStyle: getBodyTextStyle(
                    context,
                    color: AppColors.greyColor,
                  )),
            ),
            const Gap(36),
            TextFormField(
              decoration: InputDecoration(
                  hintText: 'Email',
                  hintStyle: getBodyTextStyle(
                    context,
                    color: AppColors.greyColor,
                  )),
            ),
            const Gap(36),
            TextFormField(
              decoration: InputDecoration(
                  hintText: 'Password',
                  hintStyle: getBodyTextStyle(
                    context,
                    color: AppColors.greyColor,
                  )),
            ),
            const Gap(36),
            TextFormField(
              decoration: InputDecoration(
                  hintText: 'Confirm password',
                  hintStyle: getBodyTextStyle(
                    context,
                    color: AppColors.greyColor,
                  )),
            ),
            const Gap(36),
            CustomButton(
                text: 'Update Profile',
                textStyle:
                    getTitleTextStyle(context, color: AppColors.whiteColor),
                onTap: () {
                  pushReplacement(context, const ProfileView());
                }),
          ],
        ),
      ),
    );
  }
}
