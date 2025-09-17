
import 'package:e_tracker_upi/core/style/style_extension.dart';
import 'package:e_tracker_upi/presentation/transactions/state/transaction_state.dart';
import 'package:flutter/material.dart';

import '../../../core/theme/app_colors.dart';

class FilterChipItem extends StatelessWidget {
  final FilterItem filterItem;
  const FilterChipItem({super.key, required this.filterItem});

  @override
  Widget build(BuildContext context) {
    return  Container(
      decoration: filterItem.selected
          ? context.capsuleTextViewFilledShape(appPrimaryColor)
          : context.capsuleTextViewFilledShape(appPrimaryColorLight),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
      child: Text(
        filterItem.name,
        style: context.appInterTextStyle(
          color: filterItem.selected ? appLightColor : appPrimaryColor,
          fontWeight: FontWeight.w500,
          fontSize: 14,
        ),
      ),
    );
  }
}
