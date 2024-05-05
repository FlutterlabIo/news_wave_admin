import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../../../../core/constant/constants.dart';
import '../../../../core/models/MyFiles.dart';
import '../../../../core/responsive.dart';
import '../../../dashboard/view/components/dashboard_charts.dart';
import '../../../dashboard/view/components/dashboard_latestCategories.dart';
import '../../../dashboard/view/components/file_info_card.dart';

class CategoryData extends StatefulWidget {
  const CategoryData({
    super.key,
  });

  @override
  State<CategoryData> createState() => _CategoryDataState();
}

class _CategoryDataState extends State<CategoryData> {
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
        const DashboardLatestCategories()
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
