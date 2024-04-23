import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news_wave_admin/core/responsive.dart';

import '../../../../core/util/app_colors.dart';

class DashboardCharts extends StatelessWidget {
  const DashboardCharts({super.key});

  @override
  Widget build(BuildContext context) {
    return Responsive.isMobile(context)?Column(children: [
      Column(
        children: [
          Text('Category wise news'),
          Divider(),
          SizedBox(
            height: 300,
            width: 300,
            child: PieChart(
              PieChartData(
                sections: [
                  PieChartSectionData(
                    color: Colors.blue,
                    value: 50,
                    title: 'Top News',
                    radius: 50,
                    titleStyle: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  PieChartSectionData(
                    color: Colors.green,
                    value: 30,
                    title: 'Business',
                    radius: 50,
                    titleStyle: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  PieChartSectionData(
                    color: Colors.red,
                    value: 30,
                    title: 'Cars',
                    radius: 50,
                    titleStyle: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  PieChartSectionData(
                    color: Colors.pink,
                    value: 30,
                    title: 'Family',
                    radius: 50,
                    titleStyle: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  PieChartSectionData(
                    color: Colors.green,
                    value: 30,
                    title: 'Politics',
                    radius: 50,
                    titleStyle: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      SizedBox(height: 10,),
      Column(
        children: [
          Text('Language wise news'),
          Divider(),
          SizedBox(
              height: 300,
              width: 300,
              child: BarChart(BarChartData(
                  borderData: FlBorderData(
                    border: const Border(
                        top: BorderSide.none,
                        right: BorderSide.none,
                        left: BorderSide(width: 1),
                        bottom: BorderSide(width: 1)),
                  ),groupsSpace: .5,barGroups: [
                BarChartGroupData(x: 1,barRods: [
                  BarChartRodData(toY: 10,fromY: 0,  width: 25,color: AppColors.blue)
                ]),
                BarChartGroupData(x: 2,barRods: [
                  BarChartRodData(toY: 400,fromY: 0,  width: 25,color: AppColors.blue)
                ]),
                BarChartGroupData(x: 3,barRods: [
                  BarChartRodData(toY: 40,fromY: 0,  width: 25,color: AppColors.blue)
                ])
              ]),
              )),
        ],
      )
    ],): Row(
      children: [
        Expanded(
            child: Column(
              children: [
                Text('Category wise news'),
                Divider(),
                SizedBox(
                  height: 300,
                  width: 300,
                  child: PieChart(
                    PieChartData(
                      sections: [
                        PieChartSectionData(
                          color: Colors.blue,
                          value: 50,
                          title: 'Top News',
                          radius: 50,
                          titleStyle: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        PieChartSectionData(
                          color: Colors.green,
                          value: 30,
                          title: 'Business',
                          radius: 50,
                          titleStyle: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        PieChartSectionData(
                          color: Colors.red,
                          value: 30,
                          title: 'Cars',
                          radius: 50,
                          titleStyle: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        PieChartSectionData(
                          color: Colors.pink,
                          value: 30,
                          title: 'Family',
                          radius: 50,
                          titleStyle: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        PieChartSectionData(
                          color: Colors.green,
                          value: 30,
                          title: 'Politics',
                          radius: 50,
                          titleStyle: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            )),
        Expanded(
            child: Column(
              children: [
                Text('Language wise news'),
                Divider(),
                SizedBox(
                    height: 300,
                    width: 300,
                    child: BarChart(BarChartData(
                        borderData: FlBorderData(
                          border: const Border(
                              top: BorderSide.none,
                              right: BorderSide.none,
                              left: BorderSide(width: 1),
                              bottom: BorderSide(width: 1)),
                        ),groupsSpace: .5,barGroups: [
                      BarChartGroupData(
                          x: 1,barRods: [
                        BarChartRodData(toY: 70,fromY: 0,  width: 25,color: AppColors.blue)
                      ]),
                      BarChartGroupData(x: 2,barRods: [
                        BarChartRodData(toY: 400,fromY: 0,  width: 25,color: AppColors.blue)
                      ]),
                      BarChartGroupData(x: 3,barRods: [
                        BarChartRodData(toY: 150,fromY: 0,  width: 25,color: AppColors.blue)
                      ])
                    ]),
                    )),
              ],
            ))
      ],
    );
  }
}
