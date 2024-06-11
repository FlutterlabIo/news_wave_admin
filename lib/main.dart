import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:news_wave_admin/features/ad_space/provider/ad_space_provider.dart';
import 'package:news_wave_admin/features/breaking_news/providers/breaking_mews_provider.dart';
import 'package:news_wave_admin/features/category/providers/categoryProviders.dart';
import 'package:news_wave_admin/features/featured/provider/featured_provider.dart';
import 'package:news_wave_admin/features/main/providers/side_navigation_provider.dart';
import 'package:news_wave_admin/features/news/providers/recommended_news_provider.dart';
import 'package:news_wave_admin/features/sub_category/providers/sub_category_provider.dart';
import 'package:provider/provider.dart';
import 'core/constant/constants.dart';
import 'core/util/routes/app_routes.dart';
import 'features/dashboard/controllers/MenuAppController.dart';
import 'features/live_streaming/providers/live_stream_provider.dart';
import 'features/main/main_screen.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: const FirebaseOptions(
        apiKey: 'AIzaSyCXIpJYBSOc8CXmRYb9yTWLZnqiOHOJx5Y',
        appId: "1:830673126725:web:45310947f8f5978ebdea2c",
        storageBucket: 'news-wave-6e564.appspot.com',
        messagingSenderId: "830673126725",
        projectId: "news-wave-6e564")
  );
  FirebaseFirestore.instance.settings = const Settings(
    persistenceEnabled: true
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final appRouter = AppRouter();
    return /*MaterialApp.router(
            debugShowCheckedModeBanner: false,
            title: 'News Wave Admin',
            theme: ThemeData.dark().copyWith(
              scaffoldBackgroundColor: bgColor,
              textTheme:
              GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme)
                  .apply(bodyColor: Colors.white),
              canvasColor: secondaryColor,
            ),
            routerConfig: appRouter.config(),
          );*/
      MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Admin Panel',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: bgColor,
        textTheme:
        GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme)
            .apply(bodyColor: Colors.white),
        canvasColor: secondaryColor,
      ),
      home: MultiProvider(
        providers: [
          ChangeNotifierProvider(
            create: (context) => MenuAppController(),
          ),
          ChangeNotifierProvider(
            create: (context) => RecommendedNewsProvider(),
          ),
          ChangeNotifierProvider(
            create: (context) => CategoryProvider(),
          ),
          ChangeNotifierProvider(
            create: (context) => SideNavigationProvider(),
          ),
          ChangeNotifierProvider(
            create: (context) => SubCategoryProvider(),
          ),
          ChangeNotifierProvider(
            create: (context) => BreakingMewsProvider(),
          ),
          ChangeNotifierProvider(
            create: (context) => LiveStreamProvider(),
          ),
          ChangeNotifierProvider(
            create: (context) => FeaturedProvider(),
          ),
          ChangeNotifierProvider(
            create: (context) => AdSpaceProvider(),
          ),
        ],
        child: const MainScreen(),
      ),
    );}
  }
