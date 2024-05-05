import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:news_wave_admin/core/util/app_colors.dart';
import 'package:news_wave_admin/core/util/text_style.dart';
import '../../../core/constant/constants.dart';
import '../../../core/responsive.dart';
import '../../dashboard/view/components/header.dart';

@RoutePage()
class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> tableData = [
      {
        'id': 1,
        'Slug': 'example-slug',
        'Language': 'English',
        'Row Order': 1,
        'Meta Keywords': 'keyword1, keyword2',
        'Schema markup': '...',
        'Meta description': '...',
        'Operate': 'Edit',
      },
      {
        'id': 1,
        'Slug': 'example-slug',
        'Language': 'English',
        'Row Order': 1,
        'Meta Keywords': 'keyword1, keyword2',
        'Schema markup': '...',
        'Meta description': '...',
        'Operate': 'Edit',
      },
      {
        'id': 1,
        'Slug': 'example-slug',
        'Language': 'English',
        'Row Order': 1,
        'Meta Keywords': 'keyword1, keyword2',
        'Schema markup': '...',
        'Meta description': '...',
        'Operate': 'Edit',
      },
      // Add more data as needed...
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
                                    'Add Category',
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
                            'Category',
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
                            headingRowColor: MaterialStateColor.resolveWith((states) => AppColors.blue),
                            columns: const <DataColumn>[
                              DataColumn(label: Text('ID')),
                              DataColumn(label: Text('Slug')),
                              DataColumn(label: Text('Language')),
                              DataColumn(label: Text('Row Order')),
                              DataColumn(label: Text('Meta Keywords')),
                              DataColumn(label: Text('Schema markup')),
                              DataColumn(label: Text('Meta description')),
                              DataColumn(label: Text('Operate')),
                            ],
                            rows: tableData.map((data) {
                              return DataRow(
                                cells: <DataCell>[
                                  DataCell(Text(data['id'].toString())),
                                  DataCell(Text(data['Slug'].toString())),
                                  DataCell(Text(data['Language'].toString())),
                                  DataCell(Text(data['Row Order'].toString())),
                                  DataCell(Text(data['Meta Keywords'].toString())),
                                  DataCell(Text(data['Schema markup'].toString())),
                                  DataCell(Text(data['Meta description'].toString())),
                                  DataCell(Text(data['Operate'].toString())),
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
