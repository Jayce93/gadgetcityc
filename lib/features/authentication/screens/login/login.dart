import 'package:flutter/material.dart';
import 'package:gadgetcity/common/styles/spacing_styles.dart';
import 'package:gadgetcity/common/widgets.login_signup/form_divider.dart';
import 'package:gadgetcity/common/widgets.login_signup/social_button.dart';

import 'package:gadgetcity/features/authentication/screens/login/widgets/login_form.dart';
import 'package:gadgetcity/features/authentication/screens/login/widgets/login_header.dart';
import 'package:gadgetcity/utils/constants/sizes.dart';
import 'package:gadgetcity/utils/constants/text_strings.dart';

import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
            padding: GSpacingStyles.paddingWithAppBarHeight,
            child: Column(
              children: [
                // / Login Header and sub header
                const GLoginHeader(),

                // / Form
                const LoginForm(),

                // / Form Divider
                GFormDivider(dividerText: GText.orSignInWith.capitalize!),
                const SizedBox(
                  height: GSizes.sapceBtnSections,
                ),
                const SocialLogin(),
              ],
            )),
      ),
    );
  }
}
