import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:news_wave_admin/core/util/app_colors.dart';
import 'package:news_wave_admin/core/util/text_style.dart';
import 'package:news_wave_admin/features/sub_category/providers/sub_category_provider.dart';
import 'package:provider/provider.dart';
import '../../../core/constant/constants.dart';
import '../../../core/responsive.dart';
import '../../../core/services/database_service.dart';
import '../../../core/util/custom_buttons.dart';
import '../../../core/util/form_text_field.dart';
import '../../dashboard/view/components/header.dart';

@RoutePage()
class SubCategoryScreen extends StatelessWidget {
  const SubCategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> tableData = [
      {
        'Id': 1,
        'Name': 'Product 1',
        'Category Name': 'Category A',
        'Slug': 'product-1',
        'Language': 'English',
        'Order': 1,
        'Operate': 'Edit',
      },
      {
        'Id': 1,
        'Name': 'Product 1',
        'Category Name': 'Category A',
        'Slug': 'product-1',
        'Language': 'English',
        'Order': 1,
        'Operate': 'Edit',
      },
      {
        'Id': 1,
        'Name': 'Product 1',
        'Category Name': 'Category A',
        'Slug': 'product-1',
        'Language': 'English',
        'Order': 1,
        'Operate': 'Edit',
      },
      {
        'Id': 1,
        'Name': 'Product 1',
        'Category Name': 'Category A',
        'Slug': 'product-1',
        'Language': 'English',
        'Order': 1,
        'Operate': 'Edit',
      },
      // Add more data as needed...
    ];
    final DatabaseSubCategoryService _databaseService =
        DatabaseSubCategoryService();
    return Consumer<SubCategoryProvider>(
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
                                    onTap: () {
                                      value.toggleIsOpen();
                                    },
                                    child: Container(
                                      height: 40,
                                      width: 180,
                                      decoration: BoxDecoration(
                                          color: AppColors.blue,
                                          borderRadius:
                                              BorderRadius.circular(5)),
                                      child: Padding(
                                        padding: const EdgeInsets.all(5.0),
                                        child: Row(
                                          children: [
                                            Container(
                                              height: 25,
                                              decoration: BoxDecoration(
                                                  color: AppColors.white,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          50)),
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
                                              'Add Sub Category',
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
                                  height: 850,
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
                                      Text('Name'),
                                      const SizedBox(
                                        height: 5,
                                      ),
                                      FormTextField(
                                          hintText: 'Name',
                                          controller: value.nameController),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      Text('Category Name'),
                                      const SizedBox(
                                        height: 5,
                                      ),
                                      FormTextField(
                                          hintText: 'Category Name',
                                          controller:
                                              value.categoryNameController),
                                      const SizedBox(
                                        height: 10,
                                      ),
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
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      const Text('language'),
                                      const SizedBox(
                                        height: 5,
                                      ),
                                      FormTextField(
                                          hintText: 'language',
                                          controller: value.languageController),
                                      const Text('Order'),
                                      const SizedBox(
                                        height: 5,
                                      ),
                                      FormTextField(
                                          hintText: 'Order',
                                          controller: value.rowController),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      CustomButtons(
                                        title: 'Submit',
                                        onPressed: () {
                                          value.addSubCategory();
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
                                    'Sub Category',
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
                                    return SingleChildScrollView(
                                      scrollDirection: Axis.horizontal,
                                      child: SingleChildScrollView(
                                        scrollDirection: Axis.vertical,
                                        child: DataTable(
                                          headingRowColor:
                                              MaterialStateColor.resolveWith(
                                                  (states) => Colors.blue),
                                          columns: <DataColumn>[
                                            DataColumn(label: Text('ID')),
                                            DataColumn(label: Text('Name')),
                                            DataColumn(
                                                label: Text('Category Name')),
                                            DataColumn(label: Text('Slug')),
                                            DataColumn(label: Text('Language')),
                                            DataColumn(label: Text('Order')),
                                            DataColumn(label: Text('Operate')),
                                          ],
                                          rows: subCategoryData.map((data) {
                                            return DataRow(
                                              cells: <DataCell>[
                                                DataCell(Text(
                                                    data['id'].toString())),
                                                DataCell(Text(
                                                    data['name'].toString())),
                                                DataCell(Text(
                                                    data['categoryName']
                                                        .toString())),
                                                DataCell(Text(
                                                    data['slug'].toString())),
                                                DataCell(Text(data['language']
                                                    .toString())),
                                                DataCell(Text(data['rowOrder']
                                                    .toString())),
                                                DataCell(
                                                    PopupMenuButton<String>(
                                                  elevation: 10.2,
                                                  offset: const Offset(50, 30),
                                                  padding:
                                                      const EdgeInsets.all(0.0),
                                                  shape:
                                                      const RoundedRectangleBorder(
                                                          borderRadius:
                                                              BorderRadius.all(
                                                                  Radius
                                                                      .circular(
                                                                          10))),
                                                  onSelected:
                                                      (String choice) async {
                                                    if (choice == 'Report') {
                                                      //UserBlockConfirmationBottomSheet().show(context);
                                                    } else if (choice ==
                                                        'Block') {}
                                                  },
                                                  itemBuilder:
                                                      (BuildContext context) {
                                                    return <PopupMenuEntry<
                                                        String>>[
                                                      PopupMenuItem<String>(
                                                        key: const Key("0"),
                                                        onTap: () async {},
                                                        value: 'Edit',
                                                        child: Text(
                                                          'Edit',
                                                          style: AppTextStyle
                                                                  .bodyText4()
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
                                                          style: AppTextStyle
                                                                  .bodyText4()
                                                              .copyWith(
                                                                  color: AppColors
                                                                      .white),
                                                        ),
                                                      ),
                                                    ];
                                                  },
                                                  child: Container(
                                                    margin:
                                                        const EdgeInsets.only(
                                                            left: 10),
                                                    decoration: BoxDecoration(
                                                        color: AppColors.black,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(12)),
                                                    child: const Padding(
                                                        padding:
                                                            EdgeInsets.all(8.0),
                                                        child: Icon(Icons
                                                            .more_vert_outlined)),
                                                  ),
                                                )),
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
