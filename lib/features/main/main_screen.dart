
import 'package:flutter/material.dart';
import 'package:news_wave_admin/features/Location/view/location_view.dart';
import 'package:news_wave_admin/features/Survy_Questions/view/survey_questions_view.dart';
import 'package:news_wave_admin/features/ad_space/view/ad_space_view.dart';
import 'package:news_wave_admin/features/comments/view/comments_view.dart';
import 'package:news_wave_admin/features/comments_flag/view/comments_flag_view.dart';
import 'package:news_wave_admin/features/featured/view/featured_view.dart';
import 'package:news_wave_admin/features/live_streaming/view/live_streaming_view.dart';
import 'package:news_wave_admin/features/notification/view/notification_view.dart';
import 'package:news_wave_admin/features/user_list/view/user_list_view.dart';
import 'package:news_wave_admin/features/user_role/view/user_role_view.dart';
import 'package:provider/provider.dart';
import '../../core/responsive.dart';
import '../dashboard/controllers/MenuAppController.dart';
import 'components/side_menu.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: context.read<MenuAppController>().scaffoldKey,
      drawer: const SideMenu(),
      body: SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (Responsive.isDesktop(context))
              const Expanded(
                child: SideMenu(),
              ),
            const Expanded(
              flex: 5,
              child: LocationView()/*DashboardScreen()*/,
            ),
          ],
        ),
      ),
    );
  }
}
