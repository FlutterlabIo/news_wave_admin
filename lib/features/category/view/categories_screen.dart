import 'package:auto_route/annotations.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:news_wave_admin/core/services/database_service.dart';
import 'package:news_wave_admin/core/util/app_colors.dart';
import 'package:news_wave_admin/core/util/text_style.dart';
import 'package:news_wave_admin/features/category/model/category_model.dart';
import 'package:news_wave_admin/features/category/providers/categoryProviders.dart';
import 'package:provider/provider.dart';
import '../../../core/constant/constants.dart';
import '../../../core/responsive.dart';
import '../../../core/util/custom_buttons.dart';
import '../../../core/util/form_text_field.dart';
import '../../Location/model/location_model.dart';
import '../../dashboard/view/components/header.dart';

@RoutePage()
class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final DatabaseCategoryService _databaseService = DatabaseCategoryService();
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
    return Consumer<CategoryProvider>(
        builder: (context, value, child) =>  SafeArea(
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
                                      'Add Category',
                                      style: AppTextStyle.bodyText4()
                                          .copyWith(color: AppColors.white),
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
                          width: double.infinity,
                          color: AppColors.blue,
                          height: 50,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              ' Add Category',
                              style: AppTextStyle.headline5()
                                  .copyWith(color: AppColors.white),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 10,),
                      Visibility(
                        visible: value.isOpen,
                        child: Container(
                          height: 850,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Category Name'),
                              const SizedBox(
                                height: 5,
                              ),
                              FormTextField(
                                  hintText: 'Category Name',
                                  controller: value.nameController),
                              const SizedBox(
                                height: 10,
                              ),
                              const Text('ID'),
                              const SizedBox(
                                height: 5,
                              ),
                              FormTextField(
                                  hintText: 'ID', controller: value.idController),
                              Text('Slug'),
                              const SizedBox(
                                height: 5,
                              ),
                              FormTextField(
                                  hintText: 'Slug',
                                  controller: value.slugController),
                              const SizedBox(
                                height: 10,
                              ),
                              const Text('Row Order'),
                              const SizedBox(
                                height: 5,
                              ),
                              FormTextField(
                                  hintText: 'Row Order', controller: value.rowController),
                              SizedBox(
                                height: 10,
                              ),
                              const Text('meta keywords'),
                              const SizedBox(
                                height: 5,
                              ),
                              FormTextField(
                                  hintText: 'meta keywords', controller: value.keyController),
                              const Text('Schema markup'),
                              const SizedBox(
                                height: 5,
                              ),
                              FormTextField(
                                  hintText: 'schema markup', controller: value.schemaController),
                              const Text('meta description'),
                              const SizedBox(
                                height: 5,
                              ),
                              FormTextField(
                                  hintText: 'meta description', controller: value.desController),
                              CustomButtons(
                                title: 'Submit',
                                onPressed: () {
                                  value.addCategory();
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
                      StreamBuilder(
                        stream: _databaseService.getCategory(),
                        builder: (context, snapshot) {
                          List categoryData = snapshot.data?.docs??[];
                          if(categoryData.isEmpty){
                            return const Center(child: Text('There is no Data'),);
                          }
                          debugPrint('News Datas:::$categoryData');
                          return SingleChildScrollView(
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
                              rows: categoryData.map((data) {
                                return DataRow(
                                  cells: <DataCell>[
                                    DataCell(Text(data['categoryId'].toString())),
                                    DataCell(Text(data['slug'].toString())),
                                    DataCell(Text(data['categoryName'].toString())),
                                    DataCell(Text(data['rowOrder'].toString())),
                                    DataCell(Text(data['metaKeywords'].toString())),
                                    DataCell(Text(data['schemaMarkUp'].toString())),
                                    DataCell(Text(data['metaDescription'].toString())),
                                    DataCell(Text(data['schemaMarkUp'].toString())),
                                  ],
                                );
                              }).toList(),
                            ),
                          );
                        }
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
      ),),
    );
  }
}
