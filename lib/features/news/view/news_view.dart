import 'dart:io';
import 'dart:typed_data';

import 'package:auto_route/annotations.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:file_picker/file_picker.dart';
import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:image_picker/image_picker.dart';
import 'package:news_wave_admin/core/services/database_service.dart';
import 'package:news_wave_admin/core/util/app_colors.dart';
import 'package:news_wave_admin/core/util/text_style.dart';
import 'package:news_wave_admin/features/news/model/recomended_news_model.dart';
import 'package:news_wave_admin/features/news/providers/recommended_news_provider.dart';
import 'package:provider/provider.dart';
import '../../../core/constant/constants.dart';
import '../../../core/responsive.dart';
import '../../../core/util/custom_buttons.dart';
import '../../../core/util/form_text_field.dart';
import '../../dashboard/view/components/header.dart';

@RoutePage()
class NewsView extends StatefulWidget {
  const NewsView({super.key});

  @override
  State<NewsView> createState() => _NewsViewState();
}

class _NewsViewState extends State<NewsView> {
  @override
  Widget build(BuildContext context) {
    String imageURl = '';
    final DatabaseNewsService _databaseService = DatabaseNewsService();
    final List<Map<String, dynamic>> tableData = [
      {
        'id': 1,
        'Image': 'image_1.jpg',
        'Title': 'Article 1',
        'Language': 'English',
        'Category Name': 'Category A',
        'Content Type': 'Article',
        'Status': 'Active',
        'Is expired': false,
        'Operate': 'Edit',
      },
      {
        'id': 1,
        'Image': 'image_1.jpg',
        'Title': 'Article 1',
        'Language': 'English',
        'Category Name': 'Category A',
        'Content Type': 'Article',
        'Status': 'Active',
        'Is expired': false,
        'Operate': 'Edit',
      },
      {
        'id': 1,
        'Image': 'image_1.jpg',
        'Title': 'Article 1',
        'Language': 'English',
        'Category Name': 'Category A',
        'Content Type': 'Article',
        'Status': 'Active',
        'Is expired': false,
        'Operate': 'Edit',
      },
      // Add more data as needed...
    ];

    return Consumer<RecommendedNewsProvider>(
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
                              onTap: () {
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
                                        'Add News',
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
                            height: 1000,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width: double.infinity,
                                  color: AppColors.blue,
                                  height: 50,
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      'Id',
                                      style: AppTextStyle.headline5()
                                          .copyWith(color: AppColors.white),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                FormTextField(
                                    hintText: 'Id',
                                    controller: value.idController),
                                Text('Title *'),
                                SizedBox(
                                  height: 5,
                                ),
                                FormTextField(
                                    hintText: 'news title',
                                    controller: value.titleController),
                                SizedBox(
                                  height: 10,
                                ),
                                Text('Description *'),
                                SizedBox(
                                  height: 5,
                                ),
                                FormTextField(
                                    hintText: 'news description',
                                    controller: value.desController),
                                SizedBox(
                                  height: 10,
                                ),
                                Text('language *'),
                                SizedBox(
                                  height: 5,
                                ),
                                FormTextField(
                                    hintText: 'language', controller: value.languageController),
                                SizedBox(
                                  height: 10,
                                ),
                                Text('category name *'),
                                SizedBox(
                                  height: 5,
                                ),
                                FormTextField(
                                    hintText: 'category name', controller: value.categoryNameController),
                                SizedBox(
                                  height: 10,
                                ),
                                Text('content type *'),
                                SizedBox(
                                  height: 5,
                                ),
                                FormTextField(
                                    hintText: 'content type', controller: value.contentTypeController),
                                SizedBox(
                                  height: 10,
                                ),
                                Text('status *'),
                                SizedBox(
                                  height: 5,
                                ),
                                FormTextField(
                                    hintText: 'status', controller: value.statusController),
                                SizedBox(
                                  height: 10,
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
                                        onTap: () async {
                                          value.addIsExpiredValue(true);
                                        },
                                        value: 'True',
                                        child: Text(
                                          'True',
                                          style: AppTextStyle.bodyText4().copyWith(color: AppColors.white),
                                        ),
                                      ),
                                      PopupMenuItem<String>(
                                        key: const Key("1"),
                                        onTap: () async {
                                          value.addIsExpiredValue(false);
                                        },
                                        value: 'False',
                                        child: Text(
                                          'False',
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
                                    child:  Padding(
                                        padding: EdgeInsets.all(8.0),
                                        child: Text(value.isExpired == true?'Expired':'Not Expired')
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                               imageURl==''? IconButton(
                                    onPressed: () async {
                                      FilePickerResult? result = await FilePicker
                                          .platform
                                          .pickFiles(type: FileType.image);
                                      if (result == null) return;
                                      Uint8List? uploadfile =
                                          result.files.single.bytes;
                                      String filename = result.files.single.name;
                                      firebase_storage.Reference storageRef =
                                          firebase_storage.FirebaseStorage.instance
                                              .ref()
                                              .child('news/$filename');

                                      final metadata =
                                          firebase_storage.SettableMetadata(
                                        contentType: 'image/jpeg',
                                        customMetadata: {
                                          'picked-file-path': filename
                                        },
                                      );

                                      final firebase_storage.UploadTask uploadTask =
                                          storageRef.putData(uploadfile!, metadata);
                                      final firebase_storage.TaskSnapshot
                                          downloadUrl = await uploadTask;
                                      final String attchurl =
                                          (await downloadUrl.ref.getDownloadURL());
                                      debugPrint(">>>>url:: " + attchurl);
                                      imageURl = attchurl;
                                      setState(() {

                                      });
                                    },
                                    icon: const Icon(Icons.photo_outlined)):Image.network(imageURl),
                                CustomButtons(
                                  onPressed: () {
                                        value.addNews(imageURl);
                                  },
                                  title: 'Submit',
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
                              'News',
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
                        const SizedBox(
                          height: 10,
                        ),
                        StreamBuilder(
                          stream: _databaseService.getNews(),
                          builder: (context, snapshot) {
                            List newsData = snapshot.data?.docs??[];
                            if(newsData.isEmpty){
                              return const Center(child: Text('There is no Data'),);
                            }
                            debugPrint('News Datas:::$newsData');
                            return SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: SingleChildScrollView(
                                scrollDirection: Axis.vertical,
                                child: DataTable(
                                  headingRowColor: MaterialStateColor.resolveWith(
                                      (states) => Colors.blue),
                                  columns: const <DataColumn>[
                                    DataColumn(label: Text('ID')),
                                    DataColumn(label: Text('Image')),
                                    DataColumn(label: Text('Title')),
                                    DataColumn(label: Text('Language')),
                                    DataColumn(label: Text('Category Name')),
                                    DataColumn(label: Text('Content Type')),
                                    DataColumn(label: Text('Status')),
                                    DataColumn(label: Text('Is Expired')),
                                    DataColumn(label: Text('Operate')),
                                  ],
                                  rows: newsData.map((data) {
                                    return DataRow(
                                      cells: <DataCell>[
                                        DataCell(Text(data['id'].toString())),
                                        DataCell(Text(data['newsPhotoUrl'])),
                                        DataCell(Text(data['newsTitle'].toString())),
                                        DataCell(Text(data['language'].toString())),
                                        DataCell(
                                            Text(data['categoryName'].toString())),
                                        DataCell(
                                            Text(data['contentType'].toString())),
                                        DataCell(Text(data['status'].toString())),
                                        DataCell(Text(data['isExpired'].toString())),
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
                                          itemBuilder: (BuildContext context) {
                                            return <PopupMenuEntry<String>>[
                                              PopupMenuItem<String>(
                                                key: const Key("0"),
                                                onTap: () async {},
                                                value: 'Edit',
                                                child: Text(
                                                  'Edit',
                                                  style: AppTextStyle.bodyText4()
                                                      .copyWith(
                                                          color: AppColors.white),
                                                ),
                                              ),
                                              PopupMenuItem<String>(
                                                key: const Key("1"),
                                                onTap: () async {},
                                                value: 'Delete',
                                                child: Text(
                                                  'Delete',
                                                  style: AppTextStyle.bodyText4()
                                                      .copyWith(
                                                          color: AppColors.white),
                                                ),
                                              ),
                                            ];
                                          },
                                          child: Container(
                                            margin: const EdgeInsets.only(left: 10),
                                            decoration: BoxDecoration(
                                                color: AppColors.black,
                                                borderRadius:
                                                    BorderRadius.circular(12)),
                                            child: const Padding(
                                                padding: EdgeInsets.all(8.0),
                                                child:
                                                    Icon(Icons.more_vert_outlined)),
                                          ),
                                        )),
                                      ],
                                    );
                                  }).toList(),
                                ),
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
        ),
      ),
    );
  }
}
