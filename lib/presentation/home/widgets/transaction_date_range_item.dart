
import 'package:e_tracker_upi/core/style/style_extension.dart';
import 'package:e_tracker_upi/presentation/home/bloc/home_bloc.dart';
import 'package:e_tracker_upi/presentation/home/event/home_event.dart';
import 'package:e_tracker_upi/presentation/home/state/home_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/theme/app_colors.dart';

class TransactionDateRangeItem extends StatefulWidget {
  const TransactionDateRangeItem({super.key});

  @override
  State<TransactionDateRangeItem> createState() => _TransactionDateRangeItemState();
}

class _TransactionDateRangeItemState extends State<TransactionDateRangeItem> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc,HomeState>(builder: (context, state) {
     return ListView.builder(
       shrinkWrap: true,
       scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
        return state.dateRangeItem[index].isSelected == true ?
        Container(
          decoration: BoxDecoration(
            color: appColorLightYellow,
            borderRadius: BorderRadius.circular(17)
          ),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12,),
              child: Text(
                state.dateRangeItem[index].name,
                style: context.appInterTextStyle(
                  color: appColorYellow,
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
        ):
        GestureDetector(
          onTap: () {
            context.read<HomeBloc>().add(HomeEvent.onDateRangeChange(state.dateRangeItem[index].name));
          },
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12)
            ),
            child: Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 17,),
                child: Text(
                  state.dateRangeItem[index].name,
                  style: context.appInterTextStyle(
                    color: appColorYellow,
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
          ),
        );
      },
        itemCount: state.dateRangeItem.length,
      );
    },);
  }
}
