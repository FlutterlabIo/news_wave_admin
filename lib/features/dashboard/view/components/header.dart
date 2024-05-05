import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:news_wave_admin/core/util/app_colors.dart';
import 'package:news_wave_admin/core/util/text_style.dart';
import 'package:provider/provider.dart';

import '../../../../core/constant/constants.dart';
import '../../../../core/responsive.dart';
import '../../controllers/MenuAppController.dart';

class Header extends StatelessWidget {
  const Header({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        if (!Responsive.isDesktop(context))
          IconButton(
            icon: const Icon(Icons.menu),
            onPressed: context.read<MenuAppController>().controlMenu,
          ),
        if (!Responsive.isMobile(context))
          Text(
            /*"Dashboard"*/'Create and Manage Category',
            style: Theme.of(context).textTheme.titleLarge,
          ),
        if (!Responsive.isMobile(context))
          Spacer(flex: Responsive.isDesktop(context) ? 2 : 1),
        // Expanded(child: SearchField()),
        const Expanded(child: LanguageField()),
        const ProfileCard()
      ],
    );
  }
}

class ProfileCard extends StatelessWidget {
  const ProfileCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: defaultPadding),
      padding: const EdgeInsets.symmetric(
        horizontal: defaultPadding,
        vertical: defaultPadding / 2,
      ),
      decoration: BoxDecoration(
        color: secondaryColor,
        borderRadius: const BorderRadius.all(Radius.circular(10)),
        border: Border.all(color: Colors.white10),
      ),
      child: Row(
        children: [
          Image.asset(
            "assets/images/profile_pic.png",
            height: 38,
          ),
          if (!Responsive.isMobile(context))
            const Padding(
              padding:
                  EdgeInsets.symmetric(horizontal: defaultPadding / 2),
              child: Text("Angelina Jolie"),
            ),
          const Icon(Icons.keyboard_arrow_down),
        ],
      ),
    );
  }
}

class SearchField extends StatelessWidget {
  const SearchField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: "Search",
        fillColor: secondaryColor,
        filled: true,
        border: const OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        suffixIcon: InkWell(
          onTap: () {},
          child: Container(
            padding: const EdgeInsets.all(defaultPadding * 0.75),
            margin: const EdgeInsets.symmetric(horizontal: defaultPadding / 2),
            decoration: const BoxDecoration(
              color: primaryColor,
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
            child: SvgPicture.asset("assets/icons/Search.svg"),
          ),
        ),
      ),
    );
  }
}

class LanguageField extends StatelessWidget {
  const LanguageField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Eng',
          style: AppTextStyle.bodyText4().copyWith(color: AppColors.white),
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
                onTap: () async {},
                value: 'Eng',
                child: Text(
                  'Eng',
                  style: AppTextStyle.bodyText4().copyWith(color: AppColors.white),
                ),
              ),
              PopupMenuItem<String>(
                key: const Key("1"),
                onTap: () async {},
                value: 'Bangle',
                child: Text(
                  'Bangle',
                  style:
                      AppTextStyle.bodyText4().copyWith(color: AppColors.white),
                ),
              ),
              PopupMenuItem<String>(
                key: const Key("2"),
                onTap: () async {},
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
                children: [
                  Icon(Icons.language_outlined),
                  Icon(Icons.arrow_drop_down_outlined)
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
