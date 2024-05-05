import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:news_wave_admin/core/util/app_colors.dart';
import 'package:news_wave_admin/core/util/text_style.dart';
import '../../../core/constant/constants.dart';
import '../../../core/responsive.dart';
import '../../dashboard/view/components/header.dart';

@RoutePage()
class CommentsView extends StatelessWidget {
  const CommentsView({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> tableData = [
      {
        'id': 1,
        'user': 'John Doe',
        'news': 'News 1',
        'comment': 'Comment 1',
        'operate': 'Edit',
      },
      {
        'id': 1,
        'user': 'John Doe',
        'news': 'News 1',
        'comment': 'Comment 1',
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
                            'Comments view',
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
                                    child: Center(child: Text('Search Here!')),
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
                            SizedBox(
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
                            SizedBox(
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
                            columns: <DataColumn>[
                              DataColumn(label: Text('ID')),
                              DataColumn(label: Text('User')),
                              DataColumn(label: Text('News')),
                              DataColumn(label: Text('Comment')),
                              DataColumn(label: Text('Operate')),
                            ],
                            rows: tableData.map((data) {
                              return DataRow(
                                cells: <DataCell>[
                                  DataCell(Text(data['id'].toString())),
                                  DataCell(Text(data['user'].toString())),
                                  DataCell(Text(data['news'].toString())),
                                  DataCell(Text(data['comment'].toString())),
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
