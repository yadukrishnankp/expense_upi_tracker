import 'package:e_tracker_upi/core/style/style_extension.dart';
import 'package:flutter/material.dart';

import '../../home/widgets/income_expense_chart.dart';
import '../widgets/two_segment_widget.dart';

class FinancialReportScreen extends StatefulWidget {
  const FinancialReportScreen({super.key});

  @override
  State<FinancialReportScreen> createState() => _FinancialReportScreenState();
}

class _FinancialReportScreenState extends State<FinancialReportScreen> {
  Segment selectedSegment = Segment.left;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        surfaceTintColor: Colors.transparent,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        title:  Text('Financial Report',
        style: context.appInterTextStyle(),),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 14,
              vertical: 5),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.keyboard_arrow_down, color: Theme.of(context).colorScheme.onSurface),
                    Text(
                      "Month",
                      style: context.appInterTextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            // Container(
            //     height: 300,
            //     child: buildChart()),
            TwoSegmentWidget(
              leftTitle: 'Scheduled Ride',
              rightTitle: 'Ride History',
              segment: selectedSegment,
              onChange: (Segment segment) {
                setState(() {
                  selectedSegment = segment;
                });
              },
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              padding: const EdgeInsets.symmetric(vertical: 16),
              itemCount: 10,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 7),
                  child: Container(
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Color(0xffFCFCFC),
                      borderRadius: BorderRadius.circular(14),
                    ),
                    child: ListTile(
                      leading: Container(
                        width: 60,
                        height: 60,
                        decoration: BoxDecoration(
                          color: Colors.amber.shade50,
                          borderRadius: BorderRadius.circular(14),
                        ),
                        child: Icon(
                          index % 2 == 0
                              ? Icons.shopping_cart_rounded
                              : Icons.subscriptions_rounded,
                          color: Colors.amber,
                          size: 24,
                        ),
                      ),
                      title: Text(
                        index % 2 == 0 ? "Grocery" : "Subscription",
                        style: context.appInterTextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      subtitle: Text(
                        index % 2 == 0
                            ? "Bought vegetables and fruits"
                            : "Monthly streaming service",
                        style: context.appInterTextStyle(
                          fontSize: 13,
                          color: Colors.grey,
                        ),
                      ),
                      trailing: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            index % 3 == 0
                                ? '+₹${(index + 1) * 100}'
                                : '-₹${(index + 1) * 100}',
                            style: context.appInterTextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              color: index % 3 == 0 ? Colors.green : Colors.red,
                            ),
                          ),
                          SizedBox(height: 4),
                          Text(
                            'Oct ${10 + index}',
                            style: context.appInterTextStyle(
                              fontSize: 12,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  // Widget buildChart() {
  //   return LineChartSample1();
  // }
}
