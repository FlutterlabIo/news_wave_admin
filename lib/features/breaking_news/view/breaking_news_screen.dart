
import 'package:auto_route/annotations.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:news_wave_admin/core/util/app_colors.dart';
import 'package:news_wave_admin/core/util/text_style.dart';
import 'package:provider/provider.dart';
import '../../../core/constant/constants.dart';
import '../../../core/responsive.dart';
import '../../../core/services/database_service.dart';
import '../../../core/util/custom_buttons.dart';
import '../../../core/util/form_text_field.dart';
import '../../dashboard/view/components/header.dart';
import '../providers/breaking_mews_provider.dart';
import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;
import 'dart:typed_data';



@RoutePage()
class BreakingNewsView extends StatefulWidget {
  const BreakingNewsView({super.key});

  @override
  State<BreakingNewsView> createState() => _BreakingNewsViewState();
}

class _BreakingNewsViewState extends State<BreakingNewsView> {
  @override
  Widget build(BuildContext context) {
    String imageURl = '';
    final DatabaseBreakingNewsService _databaseService = DatabaseBreakingNewsService();
    final List<Map<String, dynamic>> tableData = [
      {
        'id': 1,
        'image': 'image_1.jpg',
        'title': 'Item 1',
        'slug': 'item-1',
        'content type': 'Type A',
        'description': 'Description of Item 1',
        'language': 'English',
        'views': 100,
        'meta keywords': 'keyword1, keyword2',
        'operate': 'Edit',
      },
      {
        'id': 1,
        'image': 'image_1.jpg',
        'title': 'Item 1',
        'slug': 'item-1',
        'content type': 'Type A',
        'description': 'Description of Item 1',
        'language': 'English',
        'views': 100,
        'meta keywords': 'keyword1, keyword2',
        'operate': 'Edit',
      },

    ];

    return  Consumer<BreakingMewsProvider>(builder: (context,value,child)=>SafeArea(
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
                                      'Add Breaking News',
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
                          height: 1050,
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
                                    'News :',
                                    style: AppTextStyle.headline5()
                                        .copyWith(color: AppColors.white),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text('Id *'),
                              SizedBox(
                                height: 5,
                              ),
                              FormTextField(
                                  hintText: 'Id',
                                  controller: value.idController),
                              SizedBox(
                                height: 5,
                              ),
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
                              Text('Slug'),
                              SizedBox(
                                height: 5,
                              ),
                              FormTextField(
                                  hintText: 'Slug',
                                  controller: value.slugController),
                              SizedBox(
                                height: 10,
                              ),
                              Text('Content Type *'),
                              SizedBox(
                                height: 5,
                              ),
                              FormTextField(
                                  hintText: 'Content Type',
                                  controller: value.contentTypeController),
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
                              Text('Views *'),
                              SizedBox(
                                height: 5,
                              ),
                              FormTextField(
                                  hintText: 'Views', controller: value.viewsController),
                              SizedBox(
                                height: 10,
                              ),

                              Text('Meta Keyword *'),
                              SizedBox(
                                height: 5,
                              ),
                              FormTextField(
                                  hintText: 'Meta Keyword', controller: value.metaKeyword),

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
                                        .child('breakingnews/$filename');

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
                            'Breaking News',
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
                                  headingRowColor: MaterialStateColor.resolveWith((states) => Colors.blue),
                                  columns: <DataColumn>[
                                    DataColumn(label: Text('ID')),
                                    DataColumn(label: Text('Image')),
                                    DataColumn(label: Text('Title')),
                                    DataColumn(label: Text('Slug')),
                                    DataColumn(label: Text('Content Type')),
                                    DataColumn(label: Text('Description')),
                                    DataColumn(label: Text('Language')),
                                    DataColumn(label: Text('Views')),
                                    DataColumn(label: Text('Meta Keywords')),
                                    DataColumn(label: Text('Operate')),
                                  ],
                                  rows: newsData.map((data) {
                                    return DataRow(
                                      cells: <DataCell>[
                                        DataCell(Text(data['id'].toString())),
                                        DataCell(Image.network(data['newsPhotoUrl'].toString())),
                                        DataCell(Text(data['newsTitle'].toString())),
                                        DataCell(Text(data['slug'].toString())),
                                        DataCell(Text(data['contentType'].toString())),
                                        DataCell(Text(data['description'].toString())),
                                        DataCell(Text(data['language'].toString())),
                                        DataCell(Text(data['views'].toString())),
                                        DataCell(Text(data['metaKeyword'].toString())),
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
                            );
                          }
                      ),
                      const SizedBox(height: defaultPadding),

                    ],
                  ),
                ),
                if (!Responsive.isMobile(context))
                  const SizedBox(width: defaultPadding),
              ],
            )
          ],
        ),
      ),
    ));
  }
}
