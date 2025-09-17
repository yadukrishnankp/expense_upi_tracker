import 'package:e_tracker_upi/core/style/style_extension.dart';
import 'package:e_tracker_upi/core/theme/app_colors.dart';
import 'package:e_tracker_upi/presentation/home/bloc/home_bloc.dart';
import 'package:e_tracker_upi/presentation/transactions/bloc/transaction_bloc.dart';
import 'package:e_tracker_upi/presentation/transactions/event/transaction_event.dart';
import 'package:e_tracker_upi/presentation/transactions/state/transaction_state.dart';
import 'package:e_tracker_upi/presentation/transactions/widgets/filter_chip_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TransactionFilterBottomSheet extends StatefulWidget {
  const TransactionFilterBottomSheet({super.key});

  @override
  State<TransactionFilterBottomSheet> createState() => _TransactionFilterBottomSheetState();
}

class _TransactionFilterBottomSheetState extends State<TransactionFilterBottomSheet> {
  // Add filter type state
  final List<String> _filterTypes = ["Income", "Expense",];
  int _selectedTypeIndex = 0;

  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      initialChildSize: 0.6,
      maxChildSize: 0.8,
      minChildSize: 0.5,
      builder: (context, scrollController) {
        return Container(
          decoration: BoxDecoration(
            color: Theme.of(context).scaffoldBackgroundColor,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(16),
              topRight: Radius.circular(16),
            ),
          ),
          child: Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  controller: scrollController,
                  child: Padding(
                    padding: EdgeInsets.all(14.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 16),
                          child: Center(
                            child: Container(
                              width: 40,
                              height: 5,
                              margin: const EdgeInsets.only(bottom: 16),
                              decoration: BoxDecoration(
                                color: Colors.grey[400],
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                        ),
                        Row(
                          children: [
                            Text(
                              'Filter Transactions',
                              style: context.appInterTextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 17,
                              ),
                            ),
                            Spacer(),
                            GestureDetector(
                              onTap: () {
                                context.read<TransactionBloc>().add(TransactionEvent.onReset());
                              },
                              child: Container(
                                decoration: context.capsuleTextViewFilledShape(appPrimaryColorLight),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 4),
                                  child: Text(
                                    "Reset",
                                    style: context.appInterTextStyle(
                                      color: appPrimaryColor,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 15,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 24),
                        Text(
                          "Filter by Type",
                          style: context.appInterTextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                          ),
                        ),
                        const SizedBox(height: 12),
                        BlocBuilder<TransactionBloc,TransactionState>(builder: (context, state) => Wrap(
                          spacing: 8,
                          runSpacing: 8,
                          children: List.generate(state.filterTypeList.length, (index) {
                            return GestureDetector(
                              onTap: () {
                               context.read<TransactionBloc>().add(TransactionEvent.onFilterTypeChangeEvent(state.filterTypeList[index].name));
                              },
                              child: FilterChipItem(filterItem: state.filterTypeList[index]),
                            );
                          }),
                        ),),
                        const SizedBox(height: 24),
                        Text(
                          "Filter by Category",
                          style: context.appInterTextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                          ),
                        ),
                        const SizedBox(height: 12),
                        BlocBuilder<TransactionBloc,TransactionState>(builder: (context, state) => Wrap(
                          spacing: 8,
                          runSpacing: 8,
                          children: List.generate(state.filterCategoryList.length, (index) {
                            return GestureDetector(
                              onTap: () {
                                context.read<TransactionBloc>().add(TransactionEvent.onFilterCategoryChangeEvent(state.filterCategoryList[index].name));
                              },
                              child: FilterChipItem(filterItem: state.filterCategoryList[index]),
                            );
                          },),
                        ),),
                        const SizedBox(height: 24),
                        Text(
                          "Filter by Wallet",
                          style: context.appInterTextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                          ),
                        ),
                        const SizedBox(height: 12),
                        BlocBuilder<TransactionBloc,TransactionState>(builder: (context, state) => Wrap(
                          spacing: 8,
                          runSpacing: 8,
                          children: List.generate(state.filterWalletList.length, (index) {
                            return GestureDetector(
                              onTap: () {
                                context.read<TransactionBloc>().add(TransactionEvent.onFilterWalletChangeEvent(state.filterWalletList[index].name));
                              },
                              child: FilterChipItem(filterItem: state.filterWalletList[index]),
                            );
                          },),
                        ),),
                        const SizedBox(height: 24),
                        Text(
                          "Sort by",
                          style: context.appInterTextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                          ),
                        ),
                        const SizedBox(height: 12),
                        BlocBuilder<TransactionBloc,TransactionState>(builder: (context, state) => Wrap(
                          spacing: 8,
                          runSpacing: 8,
                          children: List.generate(state.sortByDateList.length, (index) {
                            return GestureDetector(
                              onTap: () {
                                context.read<TransactionBloc>().add(TransactionEvent.onSortByDateChangeEvent(state.sortByDateList[index].name));
                              },
                              child: FilterChipItem(filterItem: state.sortByDateList[index]),
                            );
                          },),
                        ),),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
                child: SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      // Apply filters action
                    },
                    style: context.appPrimaryButtonStyle(),
                    child: Text(
                      "Apply",
                      style: context.appInterTextStyle(
                        color: appLightColor,
                        fontWeight: FontWeight.w600,
                        fontSize: 17,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
            ],
          ),
        );
      },
    );
  }
}
