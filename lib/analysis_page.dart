import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class Analysis extends StatelessWidget {
  final data = [
    {
      'id': 1,
      'step': 712,
      'distance': 2146,
      'consumption': 412,
      'createdAt': DateTime.parse('2021-01-01'),
    },
    {
      'id': 2,
      'step': 840,
      'distance': 2466,
      'consumption': 641,
      'createdAt': DateTime.parse('2021-01-02'),
    },
    {
      'id': 3,
      'step': 397,
      'distance': 512,
      'consumption': 211,
      'createdAt': DateTime.parse('2021-01-03'),
    },
    {
      'id': 4,
      'step': 534,
      'distance': 800,
      'consumption': 365,
      'createdAt': DateTime.parse('2021-01-04'),
    },
    {
      'id': 5,
      'step': 136,
      'distance': 231,
      'consumption': 14,
      'createdAt': DateTime.parse('2021-01-05'),
    },
    {
      'id': 6,
      'step': 932,
      'distance': 1376,
      'consumption': 411,
      'createdAt': DateTime.parse('2021-01-06'),
    },
    {
      'id': 7,
      'step': 247,
      'distance': 355,
      'consumption': 201,
      'createdAt': DateTime.parse('2021-01-07'),
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Analysis'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: SafeArea(
          child: ListView(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                    child: Text('Today'),
                    style: TextButton.styleFrom(
                      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      minimumSize: Size.zero,
                      padding: EdgeInsets.all(8),
                      backgroundColor: Theme.of(context)
                          .colorScheme
                          .secondary
                          .withOpacity(0.16),
                    ),
                    onPressed: () {},
                  ),
                  TextButton(
                    child: Text('Week'),
                    style: TextButton.styleFrom(
                      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      minimumSize: Size.zero,
                      padding: EdgeInsets.all(8),
                    ),
                    onPressed: () {},
                  ),
                  TextButton(
                    child: Text('Month'),
                    style: TextButton.styleFrom(
                      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      minimumSize: Size.zero,
                      padding: EdgeInsets.all(8),
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
              SizedBox(height: 16),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                color: Color(0xFF214151),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(16, 16, 16, 8),
                  child: Column(
                    children: [
                      Text(
                        'Step',
                        style: Theme.of(context).textTheme.headline6.copyWith(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                      ),
                      SizedBox(height: 8),
                      AspectRatio(
                        aspectRatio: 5 / 3,
                        child: BarChart(
                          BarChartData(
                            alignment: BarChartAlignment.spaceAround,
                            borderData: FlBorderData(
                              show: false,
                            ),
                            titlesData: FlTitlesData(
                              leftTitles: SideTitles(
                                showTitles: true,
                                interval: 300,
                                getTextStyles: (value) {
                                  return Theme.of(context)
                                      .textTheme
                                      .caption
                                      .copyWith(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                      );
                                },
                              ),
                              bottomTitles: SideTitles(
                                showTitles: true,
                                getTitles: (value) {
                                  final index = value.toInt();
                                  return (data[index - 1]['createdAt']
                                          as DateTime)
                                      .day
                                      .toString();
                                },
                                getTextStyles: (value) {
                                  return Theme.of(context)
                                      .textTheme
                                      .caption
                                      .copyWith(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                      );
                                },
                              ),
                            ),
                            barGroups: data.map(
                              (data) {
                                return BarChartGroupData(
                                  x: data['id'] as int,
                                  barRods: [
                                    BarChartRodData(
                                      y: (data['step'] as int).toDouble(),
                                      width: 16,
                                      colors: [
                                        Theme.of(context).colorScheme.secondary,
                                      ],
                                    ),
                                  ],
                                );
                              },
                            ).toList(),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 32),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                color: Color(0xFF214151),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(16, 16, 16, 8),
                  child: Column(
                    children: [
                      Text(
                        'Distance',
                        style: Theme.of(context).textTheme.headline6.copyWith(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                      ),
                      SizedBox(height: 8),
                      AspectRatio(
                        aspectRatio: 5 / 3,
                        child: BarChart(
                          BarChartData(
                            alignment: BarChartAlignment.spaceAround,
                            borderData: FlBorderData(
                              show: false,
                            ),
                            titlesData: FlTitlesData(
                              leftTitles: SideTitles(
                                showTitles: true,
                                interval: 500,
                                getTextStyles: (value) {
                                  return Theme.of(context)
                                      .textTheme
                                      .caption
                                      .copyWith(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                      );
                                },
                              ),
                              bottomTitles: SideTitles(
                                showTitles: true,
                                getTitles: (value) {
                                  final index = value.toInt();
                                  return (data[index - 1]['createdAt']
                                          as DateTime)
                                      .day
                                      .toString();
                                },
                                getTextStyles: (value) {
                                  return Theme.of(context)
                                      .textTheme
                                      .caption
                                      .copyWith(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                      );
                                },
                              ),
                            ),
                            barGroups: data.map(
                              (data) {
                                return BarChartGroupData(
                                  x: data['id'] as int,
                                  barRods: [
                                    BarChartRodData(
                                      y: (data['distance'] as int).toDouble(),
                                      width: 16,
                                      colors: [
                                        Theme.of(context).colorScheme.secondary,
                                      ],
                                    ),
                                  ],
                                );
                              },
                            ).toList(),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 32),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                color: Color(0xFF214151),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(16, 16, 16, 8),
                  child: Column(
                    children: [
                      Text(
                        'Consumption',
                        style: Theme.of(context).textTheme.headline6.copyWith(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                      ),
                      SizedBox(height: 8),
                      AspectRatio(
                        aspectRatio: 5 / 3,
                        child: BarChart(
                          BarChartData(
                            alignment: BarChartAlignment.spaceAround,
                            borderData: FlBorderData(
                              show: false,
                            ),
                            titlesData: FlTitlesData(
                              leftTitles: SideTitles(
                                showTitles: true,
                                interval: 200,
                                getTextStyles: (value) {
                                  return Theme.of(context)
                                      .textTheme
                                      .caption
                                      .copyWith(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                      );
                                },
                              ),
                              bottomTitles: SideTitles(
                                showTitles: true,
                                getTitles: (value) {
                                  final index = value.toInt();
                                  return (data[index - 1]['createdAt']
                                          as DateTime)
                                      .day
                                      .toString();
                                },
                                getTextStyles: (value) {
                                  return Theme.of(context)
                                      .textTheme
                                      .caption
                                      .copyWith(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                      );
                                },
                              ),
                            ),
                            barGroups: data.map(
                              (data) {
                                return BarChartGroupData(
                                  x: data['id'] as int,
                                  barRods: [
                                    BarChartRodData(
                                      y: (data['consumption'] as int)
                                          .toDouble(),
                                      width: 16,
                                      colors: [
                                        Theme.of(context).colorScheme.secondary,
                                      ],
                                    ),
                                  ],
                                );
                              },
                            ).toList(),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
