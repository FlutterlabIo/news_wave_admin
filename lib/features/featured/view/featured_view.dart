import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:news_wave_admin/core/services/database_service.dart';
import 'package:news_wave_admin/core/services/database_service.dart';
import 'package:news_wave_admin/core/util/app_colors.dart';
import 'package:news_wave_admin/core/util/text_style.dart';
import 'package:provider/provider.dart';
import '../../../core/constant/constants.dart';
import '../../../core/responsive.dart';
import '../../../core/util/custom_buttons.dart';
import '../../../core/util/form_text_field.dart';
import '../../dashboard/view/components/header.dart';
import '../provider/featured_provider.dart';

@RoutePage()
class FeaturedView extends StatelessWidget {
  const FeaturedView({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> tableData = [
      {
        'id': 1,
        'title': 'News 1',
        'slug': 'news-1',
        'news type': 'Breaking',
        'video type': 'Live',
        'filter type': 'Latest',
        'app style': 'Style A',
        'web style': 'Style B',
        'language': 'English',
        'status': 'Active',
        'Operate': 'Edit',
        'order': 1,
      },
      {
        'id': 1,
        'title': 'News 1',
        'slug': 'news-1',
        'news type': 'Breaking',
        'video type': 'Live',
        'filter type': 'Latest',
        'app style': 'Style A',
        'web style': 'Style B',
        'language': 'English',
        'status': 'Active',
        'Operate': 'Edit',
        'order': 1,
      },
      // Add more data as needed...
    ];
    final DatabaseFeaturedService _databaseService =
    DatabaseFeaturedService();
    return Consumer<FeaturedProvider>(
        builder: (context, value, child) => SafeArea(
              child: SingleChildScrollView(
                primary: false,
                padding: const EdgeInsets.all(defaultPadding),
                child: Column(
                  children: [
                    const Header(),
                    const SizedBox(height: defaultPadding),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          flex: 5,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // DashBoardData(),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const SizedBox(),
                                  GestureDetector(
                                    onTap: (){
                                      value.toggleIsOpen();
                                    },
                                    child: Container(
                                      height: 40,
                                      width: 140,
                                      decoration: BoxDecoration(
                                          color: AppColors.blue,
                                          borderRadius: BorderRadius.circular(5)),
                                      child: Padding(
                                        padding: const EdgeInsets.all(5.0),
                                        child: Row(
                                          children: [
                                            Container(
                                              height: 25,
                                              decoration: BoxDecoration(
                                                  color: AppColors.white,
                                                  borderRadius:
                                                      BorderRadius.circular(50)),
                                              width: 25,
                                              child: Center(
                                                  child: Icon(
                                                Icons.add,
                                                color: AppColors.blue,
                                              )),
                                            ),
                                            const SizedBox(
                                              width: 8,
                                            ),
                                            Text(
                                              'Add Featured Section',
                                              style: AppTextStyle.bodyText4()
                                                  .copyWith(
                                                      color: AppColors.white),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Visibility(
                                visible: value.isOpen,
                                child: Container(
                                  height: 1150,
                                  child: Column(
                                    crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                    children: [
                                      Text('id'),
                                      const SizedBox(
                                        height: 5,
                                      ),
                                      FormTextField(
                                          hintText: 'id',
                                          controller: value.idController),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      Text('title'),
                                      const SizedBox(
                                        height: 5,
                                      ),
                                      FormTextField(
                                          hintText: 'title',
                                          controller: value.titleController),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      Text('slug'),
                                      const SizedBox(
                                        height: 5,
                                      ),
                                      FormTextField(
                                          hintText: 'slug',
                                          controller:
                                          value.slugController),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      Text('news type'),
                                      const SizedBox(
                                        height: 5,
                                      ),
                                      FormTextField(
                                          hintText: 'news type',
                                          controller: value.newsType),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      const Text('video type'),
                                      const SizedBox(
                                        height: 5,
                                      ),
                                      FormTextField(
                                          hintText: 'video type',
                                          controller: value.videoType),
                                      const Text('filter type'),
                                      const SizedBox(
                                        height: 5,
                                      ),
                                      FormTextField(
                                          hintText: 'filter type',
                                          controller: value.filterType),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      const Text('app style'),
                                      const SizedBox(
                                        height: 5,
                                      ),
                                      FormTextField(
                                          hintText: 'app style',
                                          controller: value.appStyle),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      const Text('web style'),
                                      const SizedBox(
                                        height: 5,
                                      ),
                                      FormTextField(
                                          hintText: 'web style',
                                          controller: value.webStyle),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      const Text('language'),
                                      const SizedBox(
                                        height: 5,
                                      ),
                                      FormTextField(
                                          hintText: 'language',
                                          controller: value.language),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      const Text('status'),
                                      const SizedBox(
                                        height: 5,
                                      ),
                                      FormTextField(
                                          hintText: 'status',
                                          controller: value.status),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      const Text('order'),
                                      const SizedBox(
                                        height: 5,
                                      ),
                                      FormTextField(
                                          hintText: 'order',
                                          controller: value.order),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      CustomButtons(
                                        title: 'Submit',
                                        onPressed: () {
                                          value.addFeatured();
                                        },
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                width: double.infinity,
                                color: AppColors.blue,
                                height: 50,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    'Featured Section',
                                    style: AppTextStyle.headline5()
                                        .copyWith(color: AppColors.white),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Row(
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(5)),
                                      width: 300,
                                      height: 40,
                                      child: Row(
                                        children: [
                                          Container(
                                            height: 40,
                                            width: 260,
                                            decoration: BoxDecoration(
                                                border: Border.all(
                                                    width: 1,
                                                    color: AppColors.white)),
                                            child: Center(
                                                child: Text('Search Here!')),
                                          ),
                                          Container(
                                            width: 40,
                                            decoration: BoxDecoration(
                                                color: AppColors.blue),
                                            child: const Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Center(
                                                  child: Icon(
                                                      Icons.search_outlined)),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Container(
                                      height: 40,
                                      width: 40,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(5),
                                          color: AppColors.blue),
                                      child: Center(
                                        child: Icon(
                                          Icons.filter_alt_sharp,
                                          color: AppColors.white,
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Container(
                                      height: 40,
                                      width: 40,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(5),
                                          color: AppColors.blue),
                                      child: Center(
                                        child: Icon(
                                          Icons.circle_outlined,
                                          color: AppColors.white,
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              StreamBuilder(
                                  stream: _databaseService.getCategory(),
                                  builder: (context, snapshot) {
                                    List subCategoryData =
                                        snapshot.data?.docs ?? [];
                                    if (subCategoryData.isEmpty) {
                                      return const Center(
                                        child: Text('There is no Data'),
                                      );
                                    }
                                    debugPrint('News Datas:::$subCategoryData');
                                    return  SingleChildScrollView(
                                      scrollDirection: Axis.horizontal,
                                      child: SingleChildScrollView(
                                        scrollDirection: Axis.vertical,
                                        child: DataTable(
                                          headingRowColor:
                                          MaterialStateColor.resolveWith(
                                                  (states) => Colors.blue),
                                          columns: <DataColumn>[
                                            DataColumn(label: Text('ID')),
                                            DataColumn(label: Text('Title')),
                                            DataColumn(label: Text('Slug')),
                                            DataColumn(label: Text('News Type')),
                                            DataColumn(label: Text('Video Type')),
                                            DataColumn(label: Text('Filter Type')),
                                            DataColumn(label: Text('App Style')),
                                            DataColumn(label: Text('Web Style')),
                                            DataColumn(label: Text('Language')),
                                            DataColumn(label: Text('Status')),
                                            DataColumn(label: Text('Operate')),
                                            DataColumn(label: Text('Order')),
                                          ],
                                          rows: subCategoryData.map((data) {
                                            return DataRow(
                                              cells: <DataCell>[
                                                DataCell(Text(data['id'].toString())),
                                                DataCell(
                                                    Text(data['title'].toString())),
                                                DataCell(
                                                    Text(data['slug'].toString())),
                                                DataCell(Text(
                                                    data['nerwsType'].toString())),
                                                DataCell(Text(
                                                    data['videoType'].toString())),
                                                DataCell(Text(
                                                    data['filterType'].toString())),
                                                DataCell(Text(
                                                    data['appStyle'].toString())),
                                                DataCell(Text(
                                                    data['webStyle'].toString())),
                                                DataCell(Text(
                                                    data['language'].toString())),
                                                DataCell(
                                                    Text(data['status'].toString())),
                                                DataCell(PopupMenuButton<String>(
                                                  elevation: 10.2,
                                                  offset: const Offset(50, 30),
                                                  padding: const EdgeInsets.all(0.0),
                                                  shape: const RoundedRectangleBorder(
                                                      borderRadius: BorderRadius.all(
                                                          Radius.circular(10))),
                                                  onSelected: (String choice) async {
                                                    if (choice == 'Report') {
                                                      //UserBlockConfirmationBottomSheet().show(context);
                                                    } else if (choice == 'Block') {}
                                                  },
                                                  itemBuilder:
                                                      (BuildContext context) {
                                                    return <PopupMenuEntry<String>>[
                                                      PopupMenuItem<String>(
                                                        key: const Key("0"),
                                                        onTap: () async {},
                                                        value: 'Edit',
                                                        child: Text(
                                                          'Edit',
                                                          style:
                                                          AppTextStyle.bodyText4()
                                                              .copyWith(
                                                              color: AppColors
                                                                  .white),
                                                        ),
                                                      ),
                                                      PopupMenuItem<String>(
                                                        key: const Key("1"),
                                                        onTap: () async {},
                                                        value: 'Delete',
                                                        child: Text(
                                                          'Delete',
                                                          style:
                                                          AppTextStyle.bodyText4()
                                                              .copyWith(
                                                              color: AppColors
                                                                  .white),
                                                        ),
                                                      ),
                                                    ];
                                                  },
                                                  child: Container(
                                                    margin: const EdgeInsets.only(
                                                        left: 10),
                                                    decoration: BoxDecoration(
                                                        color: AppColors.black,
                                                        borderRadius:
                                                        BorderRadius.circular(
                                                            12)),
                                                    child: const Padding(
                                                        padding: EdgeInsets.all(8.0),
                                                        child: Icon(Icons
                                                            .more_vert_outlined)),
                                                  ),
                                                )),
                                                DataCell(
                                                    Text(data['order'].toString())),
                                              ],
                                            );
                                          }).toList(),
                                        ),
                                      ),
                                    );
                                  }),
                              const SizedBox(height: defaultPadding),
                              // RecentFiles(),
                              /* if (Responsive.isMobile(context))
                        SizedBox(height: defaultPadding),
                      if (Responsive.isMobile(context)) StorageDetails(),*/
                            ],
                          ),
                        ),
                        if (!Responsive.isMobile(context))
                          const SizedBox(width: defaultPadding),
                        // On Mobile means if the screen is less than 850 we don't want to show it
                        /*  if (!Responsive.isMobile(context))
                  const Expanded(
                    flex: 2,
                    child: StorageDetails(),
                  ),*/
                      ],
                    )
                  ],
                ),
              ),
            ));
  }
}
