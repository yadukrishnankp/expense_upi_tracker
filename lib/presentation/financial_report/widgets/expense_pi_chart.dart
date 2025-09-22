
import 'package:e_tracker_upi/core/theme/app_colors.dart';
import 'package:e_tracker_upi/presentation/financial_report/state/financial_report_state.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import 'indicator.dart';

class PieChartSample2 extends StatefulWidget {
final List<ReportPieItem> pieList;
   PieChartSample2({required this.pieList});

  @override
  State<StatefulWidget> createState() => PieChart2State();
  
}



class PieChart2State extends State<PieChartSample2> {
  int touchedIndex = -1;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();


  }


  final colorList  = [appColorGreen,appColorRed,appPrimaryColor,appColorYellow,Colors.blue,Colors.purple,Colors.teal,Colors.pinkAccent,Colors.lightBlueAccent];


  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.3,
      child: Row(
        children: <Widget>[
          Expanded(
            flex: 3,
            child: AspectRatio(
              aspectRatio: 1,
              child: PieChart(
                PieChartData(
                  pieTouchData: PieTouchData(
                    touchCallback: (FlTouchEvent event, pieTouchResponse) {
                      setState(() {
                        if (!event.isInterestedForInteractions ||
                            pieTouchResponse == null ||
                            pieTouchResponse.touchedSection == null) {
                          touchedIndex = -1;
                          return;
                        }
                        touchedIndex = pieTouchResponse
                            .touchedSection!.touchedSectionIndex;
                      });
                    },
                  ),
                  borderData: FlBorderData(
                    show: false,
                  ),
                  sectionsSpace: 0,
                  centerSpaceRadius: 40,
                  sections: showingSections(),
                ),
              ),
            ),
          ),
          SizedBox(width: 5,),
          Expanded(
            flex: 2,
            child: Container(
             child:    Align(
               alignment: Alignment.bottomCenter,
               child: ListView.builder(
                 shrinkWrap: true,
                 physics: NeverScrollableScrollPhysics(),
                 itemCount: widget.pieList.length,
                 itemBuilder: (context, index) => Indicator(color: colorList[index], text: widget.pieList[index].name, isSquare: true),),
             )
            ),
          ),

        ],
      ),
    );
  }

  List<PieChartSectionData> showingSections() {

    return List.generate(widget.pieList.length, (i) {
      final isTouched = i == touchedIndex;
      final fontSize = isTouched ? 25.0 : 16.0;
      final radius = isTouched ? 60.0 : 50.0;
      const shadows = [Shadow(color: Colors.black, blurRadius: 2)];
       return PieChartSectionData(
        color: colorList[i],
        value: widget.pieList[i].totalPr,
        title: widget.pieList[i].totalPr.toString(),
        radius: radius,
        titleStyle: TextStyle(
          fontSize: fontSize,
          fontWeight: FontWeight.bold,
          color: appLightColor,
          shadows: shadows,
        ),
      );
    });
  }
}