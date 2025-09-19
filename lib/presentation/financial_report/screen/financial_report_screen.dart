import 'package:e_tracker_upi/core/network/state/firestore_fetch_state.dart';
import 'package:e_tracker_upi/core/style/style_extension.dart';
import 'package:e_tracker_upi/core/utils/app_date_time_utils.dart';
import 'package:e_tracker_upi/presentation/financial_report/bloc/financial_report_bloc.dart';
import 'package:e_tracker_upi/presentation/financial_report/event/financial_report_event.dart';
import 'package:e_tracker_upi/presentation/financial_report/state/financial_report_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:month_picker_dialog/month_picker_dialog.dart';
import 'package:skeletonizer/skeletonizer.dart';

import '../../../domain/entity/transaction/transaction_entity.dart';
import '../../home/widgets/income_expense_chart.dart';
import '../../home/widgets/transaction_list_tile.dart';
import '../widgets/expense_pi_chart.dart';
import '../widgets/two_segment_widget.dart';

class FinancialReportScreen extends StatefulWidget {
  const FinancialReportScreen({super.key});

  @override
  State<FinancialReportScreen> createState() => _FinancialReportScreenState();
}

class _FinancialReportScreenState extends State<FinancialReportScreen> {



  @override
  void initState() {
    // TODO: implement initState
    context.read<FinancialReportBloc>().add(DateChangeEvent(DateTime.now()));

    super.initState();
  }



  _pickMonth(){
    showMonthPicker(
      context: context,
      initialDate: DateTime.now(),
    ).then((date) {
      if (date != null) {
        context.read<FinancialReportBloc>().add(DateChangeEvent(date));
      }
    });
  }
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
                child: GestureDetector(
                  onTap: () {
                    _pickMonth();
                  },
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(Icons.keyboard_arrow_down, color: Theme.of(context).colorScheme.onSurface),
                      BlocBuilder<FinancialReportBloc,FinancialReportState>(builder: (context, state) => Text(
                       AppDateTimeUtils.getShortMonthYear( state.selectedDate),
                        style: context.appInterTextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                        ),
                      ),),
                    ],
                  ),
                ),
              ),
            ),
            BlocBuilder<FinancialReportBloc,FinancialReportState>(builder: (context, state) {
             if(state.reportList.length!=0){
              return Container(
                   height: 250,
                   child: buildChart(state.reportList));
             }
             return Container();
            },),
            BlocBuilder<FinancialReportBloc,FinancialReportState>(builder: (context, state) => TwoSegmentWidget(
              leftTitle: 'Expense',
              rightTitle: 'Income',
              segment: state.segment,
              onChange: (Segment segment) {
               context.read<FinancialReportBloc>().add(FinancialReportEvent.onSegmentChange(segment));
              },
            ),),
            BlocBuilder<FinancialReportBloc,FinancialReportState>(builder: (context, state) {
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
            },),
          ],
        ),
      ),
    );
  }

  Widget _transactionList(List<TransactionEntity> list,bool loading){
    return      Skeletonizer(
      enabled: loading,
      child: ListView.builder(
        itemCount: list.length,
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          return  TransactionListTile(entity: list[index]);
        },
      ),
    );
  }

  Widget buildChart(List<ReportPieItem> list) {
    return PieChartSample2(pieList: list,);
  }
}
