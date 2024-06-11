import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:news_wave_admin/core/constant/app_sizes.dart';
import 'package:news_wave_admin/core/services/database_service.dart';
import 'package:news_wave_admin/core/util/app_colors.dart';
import 'package:news_wave_admin/core/util/app_text_field_styles.dart';
import 'package:news_wave_admin/core/util/custom_buttons.dart';
import 'package:news_wave_admin/core/util/custom_text_field.dart';
import 'package:news_wave_admin/core/util/form_text_field.dart';
import 'package:news_wave_admin/core/util/text_style.dart';
import 'package:news_wave_admin/features/Location/model/location_model.dart';
import '../../../core/constant/constants.dart';
import '../../../core/responsive.dart';
import '../../dashboard/view/components/header.dart';

@RoutePage()
class SettingsScreen extends StatelessWidget {
   const SettingsScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final controller = TextEditingController();
    final DatabaseSettingsService _databaseService = DatabaseSettingsService();
    final List<Map<String, dynamic>> tableData = [
      {
        'id': 1,
        'name': 'Location A',
        'Latitude': 40.7128,
        'Longitude': -74.0060,
        'Operate': 'Edit',
      },
      {
        'id': 1,
        'name': 'Location A',
        'Latitude': 40.7128,
        'Longitude': -74.0060,
        'Operate': 'Edit',
      },
    ];

    return  SafeArea(
      child: SingleChildScrollView(
        primary: false,
        padding: EdgeInsets.all(defaultPadding),
        child: Column(
          children: [
            const Header(),
            const SizedBox(height: defaultPadding),
             Text('App Settings',style: AppTextStyle.headline5().copyWith(color: AppColors.white),),
            Row(
              children: [
                Expanded(
                  child: FormTextField(
                      hintText: 'Apps Name',
                      controller: controller),
                ),
                CustomButtons(title: 'Change', onPressed: (){
                  _databaseService.updateAppName();
                })
              ],
            ),
            PopupMenuButton<String>(
              elevation: 10.2,
              offset: const Offset(50, 30),
              padding: const EdgeInsets.all(0.0),
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              onSelected: (String choice) async {
                if (choice == 'Report') {
                  //UserBlockConfirmationBottomSheet().show(context);
                } else if (choice == 'Block') {}
              },
              itemBuilder: (BuildContext context) {
                return <PopupMenuEntry<String>>[
                  PopupMenuItem<String>(
                    key: const Key("0"),
                    onTap: () async {
                      _databaseService.updateAppLanguage();
                    },
                    value: 'Eng',
                    child: Text(
                      'Eng',
                      style: AppTextStyle.bodyText4().copyWith(color: AppColors.white),
                    ),
                  ),
                  PopupMenuItem<String>(
                    key: const Key("1"),
                    onTap: () async {
                      _databaseService.updateAppLanguage();
                    },
                    value: 'Bangle',
                    child: Text(
                      'Bangle',
                      style:
                      AppTextStyle.bodyText4().copyWith(color: AppColors.white),
                    ),
                  ),
                  PopupMenuItem<String>(
                    key: const Key("2"),
                    onTap: () async {
                      _databaseService.updateAppLanguage();
                    },
                    value: 'France',
                    child: Text(
                      'France',
                      style:
                      AppTextStyle.bodyText4().copyWith(color: AppColors.white),
                    ),
                  ),
                ];
              },
              child: Container(
                margin: const EdgeInsets.only(left: 10),
                decoration: BoxDecoration(
                    color: AppColors.black,
                    borderRadius: BorderRadius.circular(12)),
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.language_outlined),
                      SizedBox(width: 10,),
                      Icon(Icons.arrow_drop_down_outlined)
                    ],
                  ),
                ),
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: FormTextField(
                      hintText: 'Font Size',
                      controller: controller),
                ),
                CustomButtons(title: 'Change', onPressed: (){
                  _databaseService.updateAppFontSize();
                })
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: FormTextField(
                      hintText: 'Font Color',
                      controller: controller),
                ),
                CustomButtons(title: 'Change', onPressed: (){
                  _databaseService.updateAppFontColor();
                })
              ],
            ),
            const SizedBox(height: 15,)
          ],
        ),
      ),
    );
  }
}
