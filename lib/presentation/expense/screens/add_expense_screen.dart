import 'package:flutter/material.dart';
import 'package:e_tracker_upi/core/style/style_extension.dart';
import 'package:e_tracker_upi/core/theme/app_colors.dart';

class AddExpenseScreen extends StatefulWidget {
  const AddExpenseScreen({super.key});

  @override
  State<AddExpenseScreen> createState() => _AddExpenseScreenState();
}

class _AddExpenseScreenState extends State<AddExpenseScreen> {
  bool isRepeat = false;
  String? selectedCategory;
  String? selectedWallet;
  final TextEditingController _amountController = TextEditingController(text: "0");

  @override
  Widget build(BuildContext context) {
    final media = MediaQuery.of(context);
    return Scaffold(
      backgroundColor: appLightColor,
      body: Stack(
        children: [
          // Top colored background
          Container(
            height: media.size.height * 0.32,
            width: double.infinity,
            color: appColorRed,
          ),
          // Main content
          SafeArea(
            child: Column(
              children: [
                // AppBar Row
                Padding(
                  padding: const EdgeInsets.only(
                    left: 8,
                    right: 8,
                    top: 8,
                    bottom: 0,
                  ),
                  child: Row(
                    children: [
                      IconButton(
                        icon: Icon(Icons.arrow_back_ios_new_rounded, color: appLightColor),
                        onPressed: () => Navigator.of(context).maybePop(),
                      ),
                      Expanded(
                        child: Text(
                          "Expense",
                          style: context.appInterTextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 20,
                            color: appLightColor,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      const SizedBox(width: 48), // To balance the back button
                    ],
                  ),
                ),
                const SizedBox(height: 18),
                // "How much?" and amount
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "How much?",
                        style: context.appInterTextStyle(
                          color: appLightColor,
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            "₹",
                            style: context.appInterTextStyle(
                              color: appLightColor,
                              fontWeight: FontWeight.w700,
                              fontSize: 38,
                            ),
                          ),
                          const SizedBox(width: 4),
                          SizedBox(
                            width: 120,
                            child: TextFormField(
                              controller: _amountController,
                              keyboardType: TextInputType.numberWithOptions(decimal: true),
                              textAlign: TextAlign.left,
                              style: context.appInterTextStyle(
                                color: appLightColor,
                                fontWeight: FontWeight.w700,
                                fontSize: 38,
                              ),
                              decoration: const InputDecoration(
                                border: InputBorder.none,
                                isDense: true,
                                contentPadding: EdgeInsets.zero,
                              ),
                              cursorColor: appLightColor,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 18),
                // White card section
                Expanded(
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: appLightColor,
                      borderRadius: const BorderRadius.vertical(top: Radius.circular(28)),
                    ),
                    child: SingleChildScrollView(
                      padding: const EdgeInsets.only(top: 28, left: 20, right: 20, bottom: 16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Category Dropdown
                          Text(
                            "Category",
                            style: context.appInterTextStyle(
                              color: appSecondaryColor,
                              fontWeight: FontWeight.w500,
                              fontSize: 14,
                            ),
                          ),
                          const SizedBox(height: 8),
                          Container(
                            decoration: BoxDecoration(
                              color: appLightColor,
                              borderRadius: BorderRadius.circular(14),
                              border: Border.all(color: appSecondaryColor, width: 1),
                            ),
                            padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 2),
                            child: DropdownButtonHideUnderline(
                              child: DropdownButton<String>(
                                value: selectedCategory,
                                hint: Text(
                                  "Select Category",
                                  style: context.appInterTextStyle(
                                    color: appSecondaryColor,
                                    fontSize: 16,
                                  ),
                                ),
                                isExpanded: true,
                                items: const [
                                  DropdownMenuItem(value: "Food", child: Text("Food")),
                                  DropdownMenuItem(value: "Shopping", child: Text("Shopping")),
                                  DropdownMenuItem(value: "Other", child: Text("Other")),
                                ],
                                onChanged: (val) => setState(() => selectedCategory = val),
                              ),
                            ),
                          ),
                          const SizedBox(height: 18),
                          // Wallet Dropdown
                          Text(
                            "Wallet",
                            style: context.appInterTextStyle(
                              color: appSecondaryColor,
                              fontWeight: FontWeight.w500,
                              fontSize: 14,
                            ),
                          ),
                          const SizedBox(height: 8),
                          Container(
                            decoration: BoxDecoration(
                              color: appLightColor,
                              borderRadius: BorderRadius.circular(14),
                              border: Border.all(color: appSecondaryColor, width: 1),
                            ),
                            padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 2),
                            child: DropdownButtonHideUnderline(
                              child: DropdownButton<String>(
                                value: selectedWallet,
                                hint: Text(
                                  "Select Wallet",
                                  style: context.appInterTextStyle(
                                    color: appSecondaryColor,
                                    fontSize: 16,
                                  ),
                                ),
                                isExpanded: true,
                                items: const [
                                  DropdownMenuItem(value: "Cash", child: Text("Cash")),
                                  DropdownMenuItem(value: "Bank", child: Text("Bank")),
                                  DropdownMenuItem(value: "UPI", child: Text("UPI")),
                                ],
                                onChanged: (val) => setState(() => selectedWallet = val),
                              ),
                            ),
                          ),
                          const SizedBox(height: 18),
                          // Description Field
                          Text(
                            "Description",
                            style: context.appInterTextStyle(
                              color: appSecondaryColor,
                              fontWeight: FontWeight.w500,
                              fontSize: 14,
                            ),
                          ),
                          const SizedBox(height: 8),
                          Container(
                            decoration: BoxDecoration(
                              color: appLightColor,
                              borderRadius: BorderRadius.circular(14),
                              border: Border.all(color: appSecondaryColor, width: 1),
                            ),
                            padding: const EdgeInsets.symmetric(horizontal: 14),
                            child: TextField(
                              style: context.appInterTextStyle(
                                color: appDarkColor,
                                fontSize: 16,
                              ),
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "Add a note...",
                                hintStyle: context.appInterTextStyle(
                                  color: appSecondaryColor,
                                  fontSize: 16,
                                ),
                              ),
                              maxLines: 2,
                            ),
                          ),
                          const SizedBox(height: 18),
                          // Attachment Option
                          InkWell(
                            borderRadius: BorderRadius.circular(14),
                            onTap: () {
                              // Handle attachment
                            },
                            child: Row(
                              children: [
                                Container(
                                  padding: const EdgeInsets.all(8),
                                  decoration: BoxDecoration(
                                    color: appPrimaryColorLight,
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: Icon(Icons.attach_file, color: appPrimaryColor, size: 22),
                                ),
                                const SizedBox(width: 12),
                                Text(
                                  "Add Attachment",
                                  style: context.appInterTextStyle(
                                    color: appPrimaryColor,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 16,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 18),
                          // Repeat Switch
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Repeat",
                                    style: context.appInterTextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 16,
                                      color: appDarkColor,
                                    ),
                                  ),
                                  const SizedBox(height: 2),
                                  Text(
                                    "Repeat transaction",
                                    style: context.appInterTextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 13,
                                      color: appSecondaryColor,
                                    ),
                                  ),
                                ],
                              ),
                              Switch(
                                value: isRepeat,
                                onChanged: (val) => setState(() => isRepeat = val),
                                activeColor: appPrimaryColor,
                              ),
                            ],
                          ),
                          const SizedBox(height: 32),
                          // Continue Button
                          SizedBox(
                            width: double.infinity,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: appPrimaryColor,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(14),
                                ),
                                padding: const EdgeInsets.symmetric(vertical: 16),
                              ),
                              onPressed: () {
                                // Continue action
                              },
                              child: Text(
                                "Continue",
                                style: context.appInterTextStyle(
                                  color: appLightColor,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 18,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
