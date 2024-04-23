import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:news_wave_admin/core/util/app_colors.dart';
import 'package:news_wave_admin/core/util/text_style.dart';
import '../../../../core/constant/constants.dart';
import '../../../../core/models/MyFiles.dart';
import '../../../../core/responsive.dart';
import 'dashboard_charts.dart';
import 'file_info_card.dart';

class DashBoardData extends StatefulWidget {
  const DashBoardData({
    super.key,
  });

  @override
  State<DashBoardData> createState() => _DashBoardDataState();
}

class _DashBoardDataState extends State<DashBoardData> {
  List<double> categories = [40.0, 60.0, 10.0, 60.0];

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Dashboard",
              style: Theme.of(context).textTheme.titleMedium,
            ),
            /*ElevatedButton.icon(
              style: TextButton.styleFrom(
                padding: EdgeInsets.symmetric(
                  horizontal: defaultPadding * 1.5,
                  vertical:
                      defaultPadding / (Responsive.isMobile(context) ? 2 : 1),
                ),
              ),
              onPressed: () {},
              icon: const Icon(Icons.add),
              label: const Text("Add New"),
            ),*/
          ],
        ),
        const SizedBox(height: defaultPadding),
        Responsive(
          mobile: FileInfoCardGridView(
            isListView: true,
            crossAxisCount: size.width < 650 ? 2 : 4,
            childAspectRatio: size.width < 650 && size.width > 350 ? 1.3 : 1,
          ),
          tablet: const FileInfoCardGridView(
            isListView: true,
          ),
          desktop: FileInfoCardGridView(
            childAspectRatio: size.width < 1400 ? 2 : 1.1,
            isListView: false,
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        const DashboardCharts(),
        const SizedBox(
          height: 15,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
                flex: 6,
                child: Column(
                  children: [
                    Text(
                      'Latest Categories',
                      style: AppTextStyle.bodyText4()
                          .copyWith(color: AppColors.white),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Divider(),
                    SizedBox(
                      height: 10,
                    ),
                    GridView.builder(
                        padding: EdgeInsets.all(11),
                        shrinkWrap: true,
                        itemCount: 10,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          childAspectRatio: 1,
                          crossAxisCount: 4,
                          mainAxisSpacing: 15,
                        ),
                        itemBuilder: (context, index) {
                          return Column(
                            children: [
                              SizedBox(
                                height: 80,
                                width: 80,
                                child: ClipRRect(
                                    borderRadius: BorderRadius.circular(12),
                                    child: Image.network(
                                      'data:image/jpeg;base64,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',
                                      fit: BoxFit.cover,
                                    )),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                'Politics',
                                style: AppTextStyle.bodyText4()
                                    .copyWith(color: AppColors.white),
                              )
                            ],
                          );
                        })
                  ],
                )),
            Expanded(
                flex: 3,
                child: Column(
                  children: [
                    Text(
                      'Most Viewed News',
                      style: AppTextStyle.bodyText4()
                          .copyWith(color: AppColors.white),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Divider(),
                    SizedBox(
                      height: 10,
                    ),
                    ListView.builder(
                        padding: EdgeInsets.all(0),
                        itemCount: 3,
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          return Container(
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(12),border: Border.all(width: 1)),
                            padding: EdgeInsets.all(10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                SizedBox(
                                  height: 80,
                                  width: 80,
                                  child: ClipRRect(
                                      borderRadius: BorderRadius.circular(12),
                                      child: Image.network(
                                        'data:image/jpeg;base64,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',
                                        fit: BoxFit.cover,
                                      )),
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                      height: 20,
                                      width: 60,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(5),
                                          color: AppColors.blue),
                                      child: Row(
                                        children: [
                                          Icon(
                                            Icons.visibility,
                                            color: AppColors.white,
                                          ),
                                          Text(
                                            "2349",
                                            style: AppTextStyle.bodyText4()
                                                .copyWith(
                                                    color: AppColors.white),
                                          )
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      'Disneyland Bringing Back Nighttime Spectaculars, Events and Experiences',
                                      style: AppTextStyle.bodyText4()
                                          .copyWith(color: AppColors.white),
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                    )
                                  ],
                                )
                              ],
                            ),
                          );
                        })
                  ],
                ))
          ],
        )
      ],
    );
  }
}

class FileInfoCardGridView extends StatelessWidget {
  const FileInfoCardGridView(
      {super.key,
      this.crossAxisCount = 4,
      this.childAspectRatio = 1,
      required this.isListView});

  final int crossAxisCount;
  final double childAspectRatio;
  final bool isListView;

  @override
  Widget build(BuildContext context) {
    return isListView == true
        ? ListView.builder(
            itemCount: demoMyFiles.length,
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: FileInfoCard(info: demoMyFiles[index]),
                ))
        : GridView.builder(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: demoMyFiles.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: crossAxisCount,
              crossAxisSpacing: defaultPadding,
              mainAxisSpacing: defaultPadding,
              childAspectRatio: childAspectRatio,
            ),
            itemBuilder: (context, index) =>
                FileInfoCard(info: demoMyFiles[index]),
          );
  }
}