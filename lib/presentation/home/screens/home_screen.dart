import 'package:e_tracker_upi/core/network/state/firestore_fetch_state.dart';
import 'package:e_tracker_upi/core/style/style_extension.dart';
import 'package:e_tracker_upi/core/theme/app_colors.dart';
import 'package:e_tracker_upi/core/utils/app_date_time_utils.dart';
import 'package:e_tracker_upi/domain/entity/transaction/transaction_entity.dart';
import 'package:e_tracker_upi/presentation/home/bloc/home_bloc.dart';
import 'package:e_tracker_upi/presentation/home/event/home_event.dart';
import 'package:e_tracker_upi/presentation/home/state/home_state.dart';
import 'package:e_tracker_upi/presentation/home/widgets/transaction_list_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:skeletonizer/skeletonizer.dart';

import '../../../core/injection_container.dart';
import '../widgets/income_expense_chart.dart';
import '../widgets/transaction_date_range_item.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    final homeBloc= sl.get<HomeBloc>();
    homeBloc.state.transactionList.when(initial: () {
      context.read<HomeBloc>().add(HomeEvent.getTransactionByMonth(DateTime.now()));
      context.read<HomeBloc>().add(HomeEvent.getRecentTransaction());
    }, loading: () {

    }, success: (data) {

    }, failure: (message) {

    },);
    super.initState();
  }
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
              // Icon(Icons.keyboard_arrow_down, color: appPrimaryColor),
              Text(
                AppDateTimeUtils.getShortMonthYear(DateTime.now()),
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
               BlocBuilder<HomeBloc,HomeState>(builder: (context, state) {
                 return   Padding(
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
                           text: state.monthlyReport.netBalance.toString(),
                           style:  context.appInterTextStyle(
                             fontSize: 40,
                             fontWeight: FontWeight.w600,
                           ),
                         ),
                       ],
                     )),
                   ),
                 );
               },),
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
                                    BlocBuilder<HomeBloc,HomeState>(builder: (context, state) => Text("₹${state.monthlyReport.income}",
                                        style: context.appInterTextStyle(
                                          color: appLightColor,
                                          fontSize: 22,
                                          fontWeight: FontWeight.w600,
                                        )),),
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
                                   BlocBuilder<HomeBloc,HomeState>(builder: (context, state) =>  Text("₹${state.monthlyReport.expense}",
                                       style: context.appInterTextStyle(
                                         color: appLightColor,
                                         fontSize: 22,
                                         fontWeight: FontWeight.w600,
                                       )),),
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
          BlocBuilder<HomeBloc,HomeState>(builder: (context, state) {
            return state.monthlyTransactionList.isNotEmpty ?  Container(
                height: 300,
                child: buildChart(state.monthlyTransactionList)) : Container();
          },),
            Padding(
              padding: const EdgeInsets.only(left: 15,top: 15,bottom: 5),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  height: 31,
                    child: TransactionDateRangeItem()),
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
          BlocBuilder<HomeBloc,HomeState>(builder: (context, state) {
            final fakeList = List.filled(5, TransactionEntity(
              id: "",
              userId: "",
              category: "Shopping",
              wallet: "",
              dateTime: DateTime.now()    ,
              createdDate: "", type: '',
              createdTime: DateTime.now(),
              amount: 1239,
              formattedDate: '',
              formattedTime: '',
              createdTimeFormatted: '',
            ));
          return  state.transactionList.when(initial: () {
            return  _transactionList(fakeList, true);
          }, loading: () {
            return  _transactionList(fakeList, true);
            }, success: (data) {
             return  _transactionList(data, false);
            }, failure: (message) {
              return Container(child:  Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Center(child: Text(message,style: context.appInterTextStyle(),)),
              ));
            },);
          },)

          ],
        ),
      ),
    );
  }

  Widget _transactionList(List<TransactionEntity> list,bool loading){
    return      Skeletonizer(
      enabled: loading,
      child: ListView.builder(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemCount: list.length,
        itemBuilder: (context, index) {
          return  TransactionListTile(entity: list[index]);
        },
      ),
    );
  }

  Widget buildChart(List<TransactionEntity> list) {
    return LineChartSample1(list: list,); // ✅ Correct
  }
}
