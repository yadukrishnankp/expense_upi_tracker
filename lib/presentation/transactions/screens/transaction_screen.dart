import 'package:e_tracker_upi/core/network/state/firestore_fetch_state.dart';
import 'package:e_tracker_upi/core/router/app_router.dart';
import 'package:e_tracker_upi/core/style/style_extension.dart';
import 'package:e_tracker_upi/core/theme/app_colors.dart';
import 'package:e_tracker_upi/core/utils/app_date_time_utils.dart';
import 'package:e_tracker_upi/presentation/transactions/bloc/transaction_bloc.dart';
import 'package:e_tracker_upi/presentation/transactions/event/transaction_event.dart';
import 'package:e_tracker_upi/presentation/transactions/state/transaction_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:month_picker_dialog/month_picker_dialog.dart';
import 'package:skeletonizer/skeletonizer.dart';

import '../../../core/injection_container.dart';
import '../../../domain/entity/transaction/transaction_entity.dart';
import '../../home/widgets/transaction_list_tile.dart';
import '../widgets/transaction_filter_bottom_sheet.dart';

class TransactionScreen extends StatefulWidget {
  const TransactionScreen({super.key});

  @override
  State<TransactionScreen> createState() => _TransactionScreenState();
}

class _TransactionScreenState extends State<TransactionScreen> {

  @override
  void initState() {
    // TODO: implement initState
    context.read<TransactionBloc>().add(TransactionEvent.onDateChange(DateTime.now()));
    super.initState();
  }


  void _filterBottomSheet(BuildContext context) {
    final transactionBloc = sl.get<TransactionBloc>();
    showModalBottomSheet(
      context: context,
      isDismissible: true,
      enableDrag: true,
      useRootNavigator: true,
      isScrollControlled: true,
      backgroundColor: Colors.transparent, // to allow rounded corners
      builder: (bContext) => BlocProvider.value(value: transactionBloc,child: TransactionFilterBottomSheet(),)
    );
  }

  _pickMonth(){
    showMonthPicker(
      context: context,
      initialDate: DateTime.now(),
    ).then((date) {
      if (date != null) {
        context.read<TransactionBloc>().add(TransactionEvent.onDateChange(date));
      }
    });
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
          title: GestureDetector(
            onTap: () {
            _pickMonth();
            },
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.keyboard_arrow_down, color: Theme.of(context).colorScheme.onSurface),
               BlocBuilder<TransactionBloc,TransactionState>(builder: (context, state) =>  Text(
                 AppDateTimeUtils.getShortMonthYear(state.selectedDate),
                 style: context.appInterTextStyle(
                   fontWeight: FontWeight.w500,
                   fontSize: 14,
                 ),
               ),),
              ],
            ),
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
            child: BlocBuilder<TransactionBloc,TransactionState>(builder: (context, state) {
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
          ),
        ],
      ),
    );
  }

  Widget _transactionList(List<TransactionEntity> list,bool loading){
    return      Skeletonizer(
      enabled: loading,
      child: Expanded(
        child: ListView.builder(
          itemCount: list.length,
          itemBuilder: (context, index) {
            return  TransactionListTile(entity: list[index]);
          },
        ),
      ),
    );
  }
}
