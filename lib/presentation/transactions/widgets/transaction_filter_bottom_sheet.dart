import 'package:e_tracker_upi/core/style/style_extension.dart';
import 'package:e_tracker_upi/core/theme/app_colors.dart';
import 'package:flutter/material.dart';

class TransactionFilterBottomSheet extends StatefulWidget {
  const TransactionFilterBottomSheet({super.key});

  @override
  State<TransactionFilterBottomSheet> createState() => _TransactionFilterBottomSheetState();
}

class _TransactionFilterBottomSheetState extends State<TransactionFilterBottomSheet> {
  // Add filter type state
  final List<String> _filterTypes = ["All", "Income", "Expense", "Subscription", "Grocery"];
  int _selectedTypeIndex = 0;

  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      initialChildSize: 0.9,
      maxChildSize: 1.0,
      minChildSize: 0.9,
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
                            Container(
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
                          ],
                        ),
                        const SizedBox(height: 24),
                        Text(
                          "Filter by",
                          style: context.appInterTextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                          ),
                        ),
                        const SizedBox(height: 12),
                        Wrap(
                          spacing: 8,
                          runSpacing: 8,
                          children: List.generate(_filterTypes.length, (index) {
                            final isSelected = _selectedTypeIndex == index;
                            return GestureDetector(
                              onTap: () {
                                setState(() {
                                  _selectedTypeIndex = index;
                                });
                              },
                              child: Container(
                                decoration: isSelected
                                    ? context.capsuleTextViewFilledShape(appPrimaryColor)
                                    : context.capsuleTextViewFilledShape(appPrimaryColorLight),
                                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
                                child: Text(
                                  _filterTypes[index],
                                  style: context.appInterTextStyle(
                                    color: isSelected ? appLightColor : appPrimaryColor,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 14,
                                  ),
                                ),
                              ),
                            );
                          }),
                        ),
                        const SizedBox(height: 24),
                        Text(
                          "Sort by",
                          style: context.appInterTextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                          ),
                        ),
                        const SizedBox(height: 12),
                        Wrap(
                          spacing: 8,
                          runSpacing: 8,
                          children: [
                            ...["Newest", "Oldest"].map((sort) {
                              final isSelected = false; // Replace with your sort state logic
                              return GestureDetector(
                                onTap: () {
                                  // setState(() { ... });
                                },
                                child: Container(
                                  decoration: isSelected
                                      ? context.capsuleTextViewFilledShape(appPrimaryColor)
                                      : context.capsuleTextViewFilledShape(appPrimaryColorLight),
                                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
                                  child: Text(
                                    sort,
                                    style: context.appInterTextStyle(
                                      color: isSelected ? appLightColor : appPrimaryColor,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 14,
                                    ),
                                  ),
                                ),
                              );
                            }),
                          ],
                        ),
                        const SizedBox(height: 24),
                        Text(
                          "Filter by Category",
                          style: context.appInterTextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                          ),
                        ),
                        const SizedBox(height: 12),
                        Wrap(
                          spacing: 8,
                          runSpacing: 8,
                          children: [
                            ...["All", "Food", "Shopping", "Bills", "Travel", "Health", "Other"].map((cat) {
                              final isSelected = false; // Replace with your category state logic
                              return GestureDetector(
                                onTap: () {
                                  // setState(() { ... });
                                },
                                child: Container(
                                  decoration: isSelected
                                      ? context.capsuleTextViewFilledShape(appPrimaryColor)
                                      : context.capsuleTextViewFilledShape(appPrimaryColorLight),
                                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
                                  child: Text(
                                    cat,
                                    style: context.appInterTextStyle(
                                      color: isSelected ? appLightColor : appPrimaryColor,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 14,
                                    ),
                                  ),
                                ),
                              );
                            }),
                          ],
                        ),
                        const SizedBox(height: 24),
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
