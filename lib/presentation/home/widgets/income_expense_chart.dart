import 'package:e_tracker_upi/core/style/style_extension.dart';
import 'package:e_tracker_upi/core/theme/app_colors.dart';
import 'package:e_tracker_upi/domain/entity/transaction/transaction_entity.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class IncomeExpenseChart extends StatelessWidget {
  const IncomeExpenseChart({required this.isShowingMainData, required this.list});

  final bool isShowingMainData;
  final List<TransactionEntity> list;

  // Map x value to date string for axis labels
  Map<double, String> getDateLabels(List<TransactionEntity> transactions) {
    // Sort transactions by date ascending
    final sortedTx = List<TransactionEntity>.from(transactions)
      ..sort((a, b) => a.dateTime.compareTo(b.dateTime));
    final Map<String, double> dateToX = {};
    final Map<double, String> xToDate = {};
    int x = 1;
    for (final tx in sortedTx) {
      final dateStr = "${tx.dateTime.day.toString().padLeft(2, '0')}/${tx.dateTime.month.toString().padLeft(2, '0')}";
      if (!dateToX.containsKey(dateStr)) {
        dateToX[dateStr] = x.toDouble();
        xToDate[x.toDouble()] = dateStr;
        x++;
      }
    }
    return xToDate;
  }

  // Generate FlSpot list, x is mapped index for each unique date
  List<FlSpot> getSpotsByDate(List<TransactionEntity> transactions, Map<double, String> xToDate) {
    // Sort transactions by date ascending
    final sortedTx = List<TransactionEntity>.from(transactions)
      ..sort((a, b) => a.dateTime.compareTo(b.dateTime));
    final Map<String, double> dateTotals = {};
    for (final tx in sortedTx) {
      final dateStr = "${tx.dateTime.day.toString().padLeft(2, '0')}/${tx.dateTime.month.toString().padLeft(2, '0')}";
      dateTotals[dateStr] = (dateTotals[dateStr] ?? 0) + (tx.amount ?? 0);
    }
    final spots = <FlSpot>[];
    xToDate.forEach((x, dateStr) {
      spots.add(FlSpot(x, dateTotals[dateStr] ?? 0));
    });
    return spots;
  }

  @override
  Widget build(BuildContext context) {
    final incomeList = list.where((e) => e.type == "Income").toList();
    final expenseList = list.where((e) => e.type == "Expense").toList();

    // Get mapping for axis labels
    final xToDate = getDateLabels(list);

    return LineChart(
      LineChartData(
        lineTouchData: lineTouchData1,
        gridData: gridData,
        titlesData: FlTitlesData(
          bottomTitles: AxisTitles(
            sideTitles: SideTitles(
              showTitles: true,
              reservedSize: 32,
              interval: 1,
              getTitlesWidget: (value, meta) {
                final dateStr = xToDate[value];
                return SideTitleWidget(
                  meta: meta,
                  space: 10,
                  child: Text(dateStr ?? '', style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 12)),
                );
              },
            ),
          ),
          rightTitles: const AxisTitles(
            sideTitles: SideTitles(showTitles: false),
          ),
          topTitles: const AxisTitles(
            sideTitles: SideTitles(showTitles: false),
          ),
        ),
        borderData: borderData,
        lineBarsData: [
          LineChartBarData(
            isCurved: false,
            color: appColorGreen,
            barWidth: 4,
            isStrokeCapRound: true,
            dotData: const FlDotData(show: false),
            belowBarData: BarAreaData(show: false),
            spots: getSpotsByDate(incomeList, xToDate),
          ),
          LineChartBarData(
            isCurved: false,
            color: appColorRed,
            barWidth: 4,
            isStrokeCapRound: true,
            dotData: const FlDotData(show: false),
            belowBarData: BarAreaData(show: false),
            spots: getSpotsByDate(expenseList, xToDate),
          ),
        ],
        minX: xToDate.keys.isEmpty ? 0 : xToDate.keys.reduce((a, b) => a < b ? a : b),
        maxX: xToDate.keys.isEmpty ? 0 : xToDate.keys.reduce((a, b) => a > b ? a : b),
        // Optionally, set minY/maxY based on your data
      ),
      duration: const Duration(seconds: 5), // Animation duration
      curve: Curves.easeInOutCubic, // Animation curve
    );
  }


  LineTouchData get lineTouchData1 => LineTouchData(
    handleBuiltInTouches: true,
    touchTooltipData: LineTouchTooltipData(
      getTooltipColor: (touchedSpot) =>
          Colors.blueGrey.withValues(alpha: 0.8),
    ),
  );

  FlGridData get gridData => const FlGridData(show: false);

  FlBorderData get borderData => FlBorderData(
    show: true,
    border: Border(
      bottom: BorderSide(
          color: appPrimaryColor, width: 4),
      left: const BorderSide(color: Colors.transparent),
      right: const BorderSide(color: Colors.transparent),
      top: const BorderSide(color: Colors.transparent),
    ),
  );


}

class LineChartSample1 extends StatefulWidget {
  final List<TransactionEntity> list;
  const LineChartSample1({super.key, required this.list});

  @override
  State<StatefulWidget> createState() => LineChartSample1State();
}

class LineChartSample1State extends State<LineChartSample1> {
  late bool isShowingMainData;

  @override
  void initState() {
    super.initState();
    isShowingMainData = true;
  }

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 3,
      child: Stack(
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              const SizedBox(
                height: 37,
              ),
               Padding(
                 padding: const EdgeInsets.only(left: 15,),
                 child: Text(
                  'Spending Frequency',
                   style: context.appInterTextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                   ),

                               ),
               ),
              const SizedBox(
                height: 37,
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(right: 16, left: 6),
                  child: IncomeExpenseChart(isShowingMainData: isShowingMainData,list: widget.list,),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
            ],
          ),

        ],
      ),
    );
  }
}