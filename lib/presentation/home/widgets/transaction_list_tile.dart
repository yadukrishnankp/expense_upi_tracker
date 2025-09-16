
import 'package:e_tracker_upi/core/style/icon_extension.dart';
import 'package:e_tracker_upi/core/style/style_extension.dart';
import 'package:e_tracker_upi/domain/entity/transaction/transaction_entity.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../core/theme/app_colors.dart';

class TransactionListTile extends StatelessWidget {
  final TransactionEntity entity;
  const TransactionListTile({super.key, required this.entity});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 7),
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
              entity.category.categoryIcon,
              color: appColorYellow,
              size: 24,
            ),
          ),
          title: Text(
           entity.category,
            style: context.appInterTextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
          subtitle: Text(
            entity.description ?? "",
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
                entity.type == "Income"
                    ? '+₹${(entity.amount) }'
                    : '-₹${(entity.amount) }',
                style: context.appInterTextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  color:  entity.type == "Income" ? appColorGreen : appColorRed,
                ),
              ),
              SizedBox(height: 4),
              Text(entity.formattedDate,
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
  }
}
