import 'package:flutter/material.dart';
import 'package:news_wave_admin/features/Location/view/location_view.dart';
import 'package:news_wave_admin/features/Survy_Questions/view/survey_questions_view.dart';
import 'package:news_wave_admin/features/Tag/view/tag_screen.dart';
import 'package:news_wave_admin/features/ad_space/view/ad_space_view.dart';
import 'package:news_wave_admin/features/breaking_news/view/breaking_news_screen.dart';
import 'package:news_wave_admin/features/category/view/categories_screen.dart';
import 'package:news_wave_admin/features/comments/view/comments_view.dart';
import 'package:news_wave_admin/features/comments_flag/view/comments_flag_view.dart';
import 'package:news_wave_admin/features/dashboard/view/dashboard_screen.dart';
import 'package:news_wave_admin/features/featured/view/featured_view.dart';
import 'package:news_wave_admin/features/live_streaming/view/live_streaming_view.dart';
import 'package:news_wave_admin/features/main/providers/side_navigation_provider.dart';
import 'package:news_wave_admin/features/news/view/news_view.dart';
import 'package:news_wave_admin/features/notification/view/notification_view.dart';
import 'package:news_wave_admin/features/settings/view/settings_screen.dart';
import 'package:news_wave_admin/features/sub_category/view/sub_category.dart';
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
    return Consumer<SideNavigationProvider>(
        builder: (context, value, child) => Scaffold(
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
                    Expanded(
                      flex: 5,
                      child: value.currentIndex == 0
                          ? DashboardScreen()
                          : value.currentIndex == 1
                              ? CategoriesScreen()
                              : value.currentIndex == 2
                                  ? SubCategoryScreen()
                                  : value.currentIndex == 3
                                      ? TagScreen()
                                      : value.currentIndex == 4
                                          ? NewsView()
                                          : value.currentIndex == 5
                                              ? BreakingNewsView()
                                              : value.currentIndex == 6
                                                  ? LiveStreamView()
                                                  : value.currentIndex == 7
                                                      ? FeaturedView()
                                                      : value.currentIndex == 8
                                                          ? AdSpaceView()
                                                          : value.currentIndex ==
                                                                  9
                                                              ? UserListView()
                                                              : value.currentIndex ==
                                                                      10
                                                                  ? UserRoleView()
                                                                  : value.currentIndex ==
                                                                          11
                                                                      ? CommentsView()
                                                                      : value.currentIndex ==
                                                                              12
                                                                          ? CommentFlagView()
                                                                          : value.currentIndex == 13
                                                                              ? NotificationView()
                                                                              : value.currentIndex == 14
                                                                                  ? SurveyQuestionsView()
                                                                                  : value.currentIndex == 15
                                                                                      ? LocationView()
                                                                                      : value.currentIndex == 16
                                                                                          ? PageView()
                                                                                          : SettingsScreen() /*DashboardScreen()*/,
                    ),
                  ],
                ),
              ),
            ));
  }
}
