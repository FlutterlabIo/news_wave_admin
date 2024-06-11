import 'package:auto_route/annotations.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:news_wave_admin/core/services/database_service.dart';
import 'package:news_wave_admin/core/services/database_service.dart';
import 'package:news_wave_admin/core/util/app_colors.dart';
import 'package:news_wave_admin/core/util/text_style.dart';
import 'package:news_wave_admin/features/ad_space/provider/ad_space_provider.dart';
import 'package:provider/provider.dart';
import '../../../core/constant/constants.dart';
import '../../../core/responsive.dart';
import '../../../core/util/custom_buttons.dart';
import '../../../core/util/form_text_field.dart';
import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;
import '../../dashboard/view/components/header.dart';
import 'dart:typed_data';

@RoutePage()
class AdSpaceView extends StatefulWidget {
  const AdSpaceView({super.key});

  @override
  State<AdSpaceView> createState() => _AdSpaceViewState();
}

class _AdSpaceViewState extends State<AdSpaceView> {
  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> tableData = [
      {
        'ad space': 'Top Banner',
        'language': 'English',
        'image': 'image_1.jpg',
        'web image': 'web_image_1.jpg',
        'status': 'Active',
        'operate': 'Edit',
      },
      {
        'ad space': 'Top Banner',
        'language': 'English',
        'image': 'image_1.jpg',
        'web image': 'web_image_1.jpg',
        'status': 'Active',
        'operate': 'Edit',
      },
      // Add more data as needed...
    ];
    String imageURl = '';
    String webURL = '';
    final DatabaseAdSpaceService _databaseService = DatabaseAdSpaceService();
    return Consumer<AdSpaceProvider>(builder: (context,value,child)=>SafeArea(
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
                                      'Add Ad Space',
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
                          height: 700,
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
                                    'Ad Space',
                                    style: AppTextStyle.headline5()
                                        .copyWith(color: AppColors.white),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              FormTextField(
                                  hintText: 'Ad Space',
                                  controller: value.adSpaceController),
                              Text('Language *'),
                              SizedBox(
                                height: 5,
                              ),
                              FormTextField(
                                  hintText: 'Language',
                                  controller: value.languageController),
                              SizedBox(
                                height: 10,
                              ),
                              Text('Status *'),
                              SizedBox(
                                height: 5,
                              ),
                              FormTextField(
                                  hintText: 'Status',
                                  controller: value.statusController),
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
                                  value.addNews(imageUrl: imageURl, webImage: webURL);
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
                            'Ad Space',
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
                            return  SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: SingleChildScrollView(
                                scrollDirection: Axis.vertical,
                                child: DataTable(
                                  headingRowColor: MaterialStateColor.resolveWith((states) => Colors.blue),
                                  columns: <DataColumn>[
                                    DataColumn(label: Text('Ad Space')),
                                    DataColumn(label: Text('Language')),
                                    DataColumn(label: Text('Image')),
                                    DataColumn(label: Text('Web Image')),
                                    DataColumn(label: Text('Status')),
                                    DataColumn(label: Text('Operate')),
                                  ],
                                  rows: newsData.map((data) {
                                    return DataRow(
                                      cells: <DataCell>[
                                        DataCell(Text(data['adSpace'].toString())),
                                        DataCell(Text(data['language'].toString())),
                                        DataCell(Text(data['image'].toString())),
                                        DataCell(Text(data['webImagez'].toString())),
                                        DataCell(Text(data['status'].toString())),
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
