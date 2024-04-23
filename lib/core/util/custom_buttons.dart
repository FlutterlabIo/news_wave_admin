
import 'package:flutter/material.dart';
import 'package:news_wave_admin/core/util/text_style.dart';
import 'app_colors.dart';

class CustomButtons extends StatelessWidget {
  final String title;
  const CustomButtons({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ButtonStyle(
        minimumSize: MaterialStateProperty.all(Size.zero),
        backgroundColor:
        MaterialStateProperty.all(Colors.transparent),
        elevation: MaterialStateProperty.all(0),
        overlayColor:
        MaterialStateProperty.all(Colors.transparent),
        alignment: Alignment.center,
        padding: MaterialStateProperty.all(EdgeInsets.zero),
        shadowColor:
        MaterialStateProperty.all(Colors.transparent),
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
      ),
      child:  Center(
        child: Container(
          width: 300,
          height:46,
          padding: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
          decoration: BoxDecoration(
            color: AppColors.blue,
            borderRadius: BorderRadius.circular(
              12,
            ),
          ),
          child: Center(
            child: Text(
              title,
              style: AppTextStyle.buttonText(),
            ),
          ),
        ),
      ),);
  }
}

