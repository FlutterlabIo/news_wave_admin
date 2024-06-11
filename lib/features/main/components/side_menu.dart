import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:news_wave_admin/features/main/providers/side_navigation_provider.dart';
import 'package:provider/provider.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<SideNavigationProvider>(builder: (context,value,child)=>Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            child: Image.asset("assets/images/logo.png"),
          ),
          DrawerListTile(
            title: "Dashboard",
            svgSrc: "assets/icons/menu_dashboard.svg",
            press: () {
              value.changeIndex(0);
            },
          ),
          DrawerListTile(
            title: "Category",
            svgSrc: "assets/icons/menu_tran.svg",
            press: () {
              value.changeIndex(1);
            },
          ),
          DrawerListTile(
            title: "Subcategory",
            svgSrc: "assets/icons/menu_task.svg",
            press: () {
              value.changeIndex(2);
            },
          ),
          DrawerListTile(
            title: "Tag",
            svgSrc: "assets/icons/menu_doc.svg",
            press: () {
              value.changeIndex(3);
            },
          ),
          DrawerListTile(
            title: "News",
            svgSrc: "assets/icons/menu_store.svg",
            press: () {
              value.changeIndex(4);
            },
          ),
          DrawerListTile(
            title: "Breaking News",
            svgSrc: "assets/icons/menu_notification.svg",
            press: () {
              value.changeIndex(5);
            },
          ),
          DrawerListTile(
            title: "Live Streaming",
            svgSrc: "assets/icons/menu_profile.svg",
            press: () {
              value.changeIndex(6);
            },
          ),
          DrawerListTile(
            title: "Featured Section",
            svgSrc: "assets/icons/menu_setting.svg",
            press: () {
              value.changeIndex(7);
            },
          ),
          DrawerListTile(
            title: "Ad Spaces",
            svgSrc: "assets/icons/menu_setting.svg",
            press: () {
              value.changeIndex(8);
            },
          ),
          DrawerListTile(
            title: "User",
            svgSrc: "assets/icons/menu_setting.svg",
            press: () {
              value.changeIndex(9);
            },
          ),

          DrawerListTile(
            title: "User Role",
            svgSrc: "assets/icons/menu_setting.svg",
            press: () {
              value.changeIndex(10);
            },
          ),
          DrawerListTile(
            title: "Comment",
            svgSrc: "assets/icons/menu_setting.svg",
            press: () {
              value.changeIndex(11);
            },
          ),
          DrawerListTile(
            title: "Comment Flag",
            svgSrc: "assets/icons/menu_setting.svg",
            press: () {
              value.changeIndex(12);
            },
          ),
          DrawerListTile(
            title: "Send Notification",
            svgSrc: "assets/icons/menu_setting.svg",
            press: () {
              value.changeIndex(13);
            },
          ),
          DrawerListTile(
            title: "Survey",
            svgSrc: "assets/icons/menu_setting.svg",
            press: () {
              value.changeIndex(14);
            },
          ),
          DrawerListTile(
            title: "Location",
            svgSrc: "assets/icons/menu_setting.svg",
            press: () {
              value.changeIndex(15);
            },
          ),
          DrawerListTile(
            title: "Pages",
            svgSrc: "assets/icons/menu_setting.svg",
            press: () {
              value.changeIndex(16);
            },
          ),
          DrawerListTile(
            title: "System settings",
            svgSrc: "assets/icons/menu_setting.svg",
            press: () {
              value.changeIndex(17);
            },
          ),
        ],
      ),
    ));
  }
}

class DrawerListTile extends StatelessWidget {
  const DrawerListTile({
    Key? key,
    // For selecting those three line once press "Command+D"
    required this.title,
    required this.svgSrc,
    required this.press,
  }) : super(key: key);

  final String title, svgSrc;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: press,
      horizontalTitleGap: 0.0,
      leading: SvgPicture.asset(
        svgSrc,
        colorFilter: ColorFilter.mode(Colors.white54, BlendMode.srcIn),
        height: 16,
      ),
      title: Text(
        title,
        style: TextStyle(color: Colors.white54),
      ),
    );
  }
}
