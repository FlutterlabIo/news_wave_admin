import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:news_wave_admin/core/constant/app_sizes.dart';
import 'package:news_wave_admin/core/util/app_colors.dart';
import 'package:news_wave_admin/core/util/app_text_field_styles.dart';
import 'package:news_wave_admin/core/util/custom_buttons.dart';
import 'package:news_wave_admin/core/util/routes/app_routes.gr.dart';
import 'package:news_wave_admin/core/util/text_style.dart';

import '../../core/responsive.dart';
import '../../core/util/button_style.dart';

@RoutePage()
class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  @override
  Widget build(BuildContext context) {
    bool _obscureText = true;
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQxIqsbIFUGPcw7LcOTk-WzGjZX6390_NBt-iBEDa6n0A&s'),
            // Replace 'assets/background_image.jpg' with your image path
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18),
              color: AppColors.white,
            ),
            width: Responsive.isMobile(context)
                ? 300
                : Responsive.isTablet(context)
                    ? 500
                    : 500,
            height: 400,
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Welcome !',
                  style: AppTextStyle.headline3(),
                ),
                Text(
                  'Please Login to your account ',
                  style: AppTextStyle.bodyText4(),
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  style: TextStyle(color: Colors.black),
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(0),
                    prefixIcon: Icon(Icons.person),
                    labelText: ' Email',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  obscureText: _obscureText,
                  style: TextStyle(color: Colors.black),
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(0),
                    prefixIcon: Icon(Icons.person),
                    labelText: ' Password',
                    border: OutlineInputBorder(),
                    suffixIcon: GestureDetector(
                      // add suffix icon with GestureDetector
                      onTap: () {
                        setState(() {
                          _obscureText = !_obscureText; // toggle obscure text
                        });
                      },
                      child: Icon(_obscureText
                          ? Icons.visibility
                          : Icons
                              .visibility_off), // show different icons based on obscureText state
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(),
                    Text(
                      'Forgot Password?',
                      style: AppTextStyle.bodyText4()
                          .copyWith(color: AppColors.blue),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                 CustomButtons(title: 'Login',onPressed: (){},)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
