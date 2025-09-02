import 'package:e_tracker_upi/core/style/style_extension.dart';
import 'package:e_tracker_upi/core/theme/app_colors.dart';
import 'package:flutter/material.dart';

import '../widgets/income_expense_chart.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFFFF6E5),
        centerTitle: true,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            width: 36,
            height: 36,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: appPrimaryColor,
                width: 2,
              ),
            ),
            child: ClipOval(
              child: Image.asset(
                'assets/images/dp.jpeg', // Replace with your image path
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        title: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.keyboard_arrow_down, color: appPrimaryColor),
              Text(
                "October",
                style: context.appInterTextStyle(
                    fontWeight: FontWeight.w500, fontSize: 18),
              )
            ],
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.notifications, color: appPrimaryColor,size: 40,),
            onPressed: () {
              // Handle notification tap
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color(0xFFFFF6E5),
                    Color(0xFFF8EDD8),
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(16),
                  bottomRight: Radius.circular(16),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 24),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Center(
                      child: Text(
                        "Account Balance",
                        style: context.appInterTextStyle(
                          color: appSecondaryColor,
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                 Padding(
                   padding: const EdgeInsets.symmetric(vertical: 10),
                   child: Center(
                     child: RichText(text: TextSpan(
                       text: '₹',
                       style: context.appInterTextStyle(
                         fontSize: 40,
                         fontWeight: FontWeight.w600,
                       ),
                       children: [
                         TextSpan(
                           text: '400000',
                           style:  context.appInterTextStyle(
                             fontSize: 40,
                             fontWeight: FontWeight.w600,
                           ),
                         ),
                       ],
                     )),
                   ),
                 ),
                  Container(
                    child: Row(
                      children: [
                        Expanded(flex:1,child: Padding(
                          padding: const EdgeInsets.all(12),
                          child: Container(
                            height: 100,
                            decoration: BoxDecoration(
                              color: appColorGreen,
                              borderRadius: BorderRadius.circular(24),
                            ),
                            child: Row(children: [
                              Expanded(flex:3,child: Center(
                                child: Container(
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: Theme.of(context).scaffoldBackgroundColor,
                                      borderRadius: BorderRadius.circular(18)
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8),
                                      child: Image.asset("assets/images/income.png",
                                      height: 40,width: 40,),
                                    ),
                                  ),
                                ),
                              )),
                              Expanded(flex:4,child: Container(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Income",
                                      style: context.appInterTextStyle(
                                        color: appLightColor,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                      )),
                                    Text("₹20000",
                                      style: context.appInterTextStyle(
                                        color: appLightColor,
                                        fontSize: 22,
                                        fontWeight: FontWeight.w600,
                                      )),
                                  ],
                                ),
                              ))
                            ],),
                          ),
                        )),
                        Expanded(flex:1,child: Padding(
                          padding: const EdgeInsets.all(12),
                          child: Container(
                            height: 100,
                            decoration: BoxDecoration(
                              color: appColorRed,
                              borderRadius: BorderRadius.circular(24),
                            ),
                            child: Row(children: [
                              Expanded(flex:3,child: Center(
                                child: Container(
                                  child: Container(
                                    decoration: BoxDecoration(
                                        color: Theme.of(context).scaffoldBackgroundColor,
                                        borderRadius: BorderRadius.circular(18)
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8),
                                      child: Image.asset("assets/images/expense.png",
                                        height: 40,width: 40,),
                                    ),
                                  ),
                                ),
                              )),
                              Expanded(flex:4,child: Container(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Expense",
                                        style: context.appInterTextStyle(
                                          color: appLightColor,
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                        )),
                                    Text("₹20000",
                                        style: context.appInterTextStyle(
                                          color: appLightColor,
                                          fontSize: 22,
                                          fontWeight: FontWeight.w600,
                                        )),
                                  ],
                                ),
                              ))
                            ],),
                          ),
                        )),



                      ],
                    ),
                  ),


                ],
              ),
            ),
           Container(
              height: 300,
                child: buildChart()),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
              child: SingleChildScrollView(
                // scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 8),
                      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 6),
                      decoration: BoxDecoration(
                        color: appColorLightYellow,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Text(
                        "Today",
                        style: context.appInterTextStyle(
                          color: appColorYellow,
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    ...["Week", "Month", "Year"].map((text) => Padding(
                      padding: const EdgeInsets.only(right: 8),
                      child: Text(
                        text,
                        style: context.appInterTextStyle(
                          color: appSecondaryColor,
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    )).toList(),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 14,vertical: 10),
              child: Row(
                children: [
                  Text("Recent Transactions",
                    style: context.appInterTextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Spacer(),
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                      child: Text("See All",
                        style: context.appInterTextStyle(
                          color: appColorYellow,
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    decoration: context.capsuleTextViewFilledShape(appColorLightYellow),
                  )
                ],
              ),
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
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
            )

          ],
        ),
      ),
    );
  }

  Widget buildChart() {
    return LineChartSample1(); // ✅ Correct
  }
}
