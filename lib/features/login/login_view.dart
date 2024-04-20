import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:news_wave_admin/core/constant/app_sizes.dart';
import 'package:news_wave_admin/core/util/app_text_field_styles.dart';
import 'package:news_wave_admin/core/util/custom_buttons.dart';
import 'package:news_wave_admin/core/util/routes/app_routes.gr.dart';

@RoutePage()
class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
          child: Column(children: [
            GestureDetector(
                onTap: (){
                  context.router.push(const DashboardRoute());
                },
                child: const Text('Login')),
          /*  SizedBox(height: AppSizes.height10,),*/
           /* AppTextFieldStyle.authNormal(hint: "Enter Email"),
            AppTextFieldStyle.authPass(hint: 'Enter Password'),
            CustomButtons.fill(name: 'Login')*/
          ],),
        ),
      )
    );
  }
}

