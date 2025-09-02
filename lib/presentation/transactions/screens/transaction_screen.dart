import 'package:e_tracker_upi/core/router/app_router.dart';
import 'package:e_tracker_upi/core/style/style_extension.dart';
import 'package:e_tracker_upi/core/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../widgets/transaction_filter_bottom_sheet.dart';

class TransactionScreen extends StatefulWidget {
  const TransactionScreen({super.key});

  @override
  State<TransactionScreen> createState() => _TransactionScreenState();
}

class _TransactionScreenState extends State<TransactionScreen> {


  void _filterBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isDismissible: true,
      enableDrag: true,
      useRootNavigator: true,
      // isScrollControlled: true,
      backgroundColor: Colors.transparent, // to allow rounded corners
      builder: (_) => TransactionFilterBottomSheet(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: AppBar(
          surfaceTintColor: Colors.transparent,
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          elevation: 0,
          automaticallyImplyLeading: false,
          title: Row(
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
          centerTitle: false,
          actions: [
            IconButton(
              icon: Icon(Icons.filter_list, color: Theme.of(context).colorScheme.onSurface, size: 28),
              onPressed: () {
                _filterBottomSheet(context);
                // Handle filter tap
              },
            ),
          ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 14),
            child: GestureDetector(
              onTap: () {
                context.pushNamed(AppRoute.financial_report.name);
              },
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color:  appPrimaryColorLight,
                  borderRadius: BorderRadius.all(Radius.circular(14))
                ),
                padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 14),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "All Transactions",
                      style: context.appInterTextStyle(
                        color: appPrimaryColor,
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                      ),
                    ),
                    Spacer(),
                    Icon(Icons.arrow_forward_ios, color: appPrimaryColor, size: 18),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
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
                          color: appColorLightYellow,
                          borderRadius: BorderRadius.circular(14),
                        ),
                        child: Icon(
                          index % 2 == 0
                              ? Icons.shopping_cart_rounded
                              : Icons.subscriptions_rounded,
                          color: appColorYellow,
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
                          color: appSecondaryColor,
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
                              color: index % 3 == 0 ? appColorGreen : appColorRed,
                            ),
                          ),
                          SizedBox(height: 4),
                          Text(
                            'Oct ${10 + index}',
                            style: context.appInterTextStyle(
                              fontSize: 12,
                              color: appSecondaryColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
