import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:news_wave_admin/core/util/app_colors.dart';
import 'package:news_wave_admin/core/util/text_style.dart';
import '../../../core/constant/constants.dart';
import '../../../core/responsive.dart';
import '../../dashboard/view/components/header.dart';

@RoutePage()
class LiveStreamView extends StatelessWidget {
  const LiveStreamView({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> tableData = [
      {
        'id': 1,
        'image': 'image_1.jpg',
        'title': 'Page 1',
        'type': 'Page',
        'url': 'page-1',
        'language': 'English',
        'meta keyword': 'keyword1, keyword2',
        'schema markup': '...',
        'meta title': 'Meta Title of Page 1',
        'meta description': 'Meta Description of Page 1',
        'operate': 'Edit',
      },

      {
        'id': 1,
        'image': 'image_1.jpg',
        'title': 'Page 1',
        'type': 'Page',
        'url': 'page-1',
        'language': 'English',
        'meta keyword': 'keyword1, keyword2',
        'schema markup': '...',
        'meta title': 'Meta Title of Page 1',
        'meta description': 'Meta Description of Page 1',
        'operate': 'Edit',
      },

    ];

    return SafeArea(
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
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const SizedBox(),
                          Container(
                            height: 40,
                            width: 180,
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
                                    'Add Live Streaming',
                                    style: AppTextStyle.bodyText4()
                                        .copyWith(color: AppColors.white),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        width: double.infinity,
                        color: AppColors.blue,
                        height: 50,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Live Streaming',
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
                                  borderRadius: BorderRadius.circular(5)),
                              width: 300,
                              height: 40,
                              child: Row(
                                children: [
                                  Container(
                                    height: 40,
                                    width: 260,
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            width: 1, color: AppColors.white)),
                                    child: const Center(child: Text('Search Here!')),
                                  ),
                                  Container(
                                    width: 40,
                                    decoration:
                                    BoxDecoration(color: AppColors.blue),
                                    child: const Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: Center(
                                          child: Icon(Icons.search_outlined)),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: AppColors.blue),
                              child: Center(
                                child: Icon(
                                  Icons.filter_alt_sharp,
                                  color: AppColors.white,
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
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
                      const SizedBox(height: 10,),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: SingleChildScrollView(
                          scrollDirection: Axis.vertical,
                          child: DataTable(
                            headingRowColor: MaterialStateColor.resolveWith((states) => Colors.blue),
                            columns: const <DataColumn>[
                              DataColumn(label: Text('ID')),
                              DataColumn(label: Text('Image')),
                              DataColumn(label: Text('Title')),
                              DataColumn(label: Text('Type')),
                              DataColumn(label: Text('URL')),
                              DataColumn(label: Text('Language')),
                              DataColumn(label: Text('Meta Keyword')),
                              DataColumn(label: Text('Schema Markup')),
                              DataColumn(label: Text('Meta Title')),
                              DataColumn(label: Text('Meta Description')),
                              DataColumn(label: Text('Operate')),
                            ],
                            rows: tableData.map((data) {
                              return DataRow(
                                cells: <DataCell>[
                                  DataCell(Text(data['id'].toString())),
                                  DataCell(Text(data['image'].toString())),
                                  DataCell(Text(data['title'].toString())),
                                  DataCell(Text(data['type'].toString())),
                                  DataCell(Text(data['url'].toString())),
                                  DataCell(Text(data['language'].toString())),
                                  DataCell(Text(data['meta keyword'].toString())),
                                  DataCell(Text(data['schema markup'].toString())),
                                  DataCell(Text(data['meta title'].toString())),
                                  DataCell(Text(data['meta description'].toString())),
                                  DataCell(PopupMenuButton<String>(
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
                                          value: 'Edit',
                                          child: Text(
                                            'Edit',
                                            style: AppTextStyle.bodyText4().copyWith(color: AppColors.white),
                                          ),
                                        ),
                                        PopupMenuItem<String>(
                                          key: const Key("1"),
                                          onTap: () async {},
                                          value: 'Delete',
                                          child: Text(
                                            'Delete',
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
                                          child: Icon(Icons.more_vert_outlined)
                                      ),
                                    ),
                                  )),
                                ],
                              );
                            }).toList(),
                          ),
                        ),
                      ),
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
    );
  }
}
