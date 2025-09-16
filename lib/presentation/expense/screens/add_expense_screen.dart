import 'package:e_tracker_upi/presentation/expense/bloc/AddExpenseBloc.dart';
import 'package:e_tracker_upi/presentation/expense/event/add_expense_event.dart';
import 'package:e_tracker_upi/presentation/expense/state/add_expense_state.dart';
import 'package:flutter/material.dart';
import 'package:e_tracker_upi/core/style/style_extension.dart';
import 'package:e_tracker_upi/core/theme/app_colors.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';

import '../../../core/injection_container.dart';
import '../../../core/utils/app_date_time_utils.dart';
import '../../../shared/widget/app_toast.dart';
import '../../../shared/widget/loading_dialog.dart';
import '../../home/bloc/home_bloc.dart';
import '../../home/event/home_event.dart';
import '../../income/state/add_income_state.dart';

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
  final TextEditingController _descController = TextEditingController();
  final TextEditingController _dateTimeController = TextEditingController();

  DateTime selectedDateTime = DateTime.now();
  int dateTimeEpoch = DateTime.now().millisecondsSinceEpoch;

  final categoryList = ["Food","Groceries","Entertainment","Utility Bills","Shopping","Rent","Fuel"];
  final paymentTypeList = ["Bank","Upi","Cash"];

  @override
  void initState() {
    _updateDateTimeDisplay();
    super.initState();
  }

  void _updateDateTimeDisplay() {
    final formattedDate = DateFormat('dd/MM/yyyy').format(selectedDateTime);
    final formattedTime = DateFormat('HH:mm').format(selectedDateTime);
    _dateTimeController.text = '$formattedDate $formattedTime';
    dateTimeEpoch = selectedDateTime.millisecondsSinceEpoch;
    _dateTimeController.text = AppDateTimeUtils.formatFull(selectedDateTime);
    context.read<AddExpenseBloc>().add(AddExpenseEvent.onDateTimeChange(selectedDateTime));


  }

  Future<void> _selectDateTime() async {
    final date = await showDatePicker(
      context: context,
      initialDate: selectedDateTime,
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
    );

    if (date != null) {
      final time = await showTimePicker(
        context: context,
        initialTime: TimeOfDay.fromDateTime(selectedDateTime),
      );

      if (time != null) {
        setState(() {
          selectedDateTime = DateTime(
            date.year,
            date.month,
            date.day,
            time.hour,
            time.minute,
          );
          _updateDateTimeDisplay();
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final media = MediaQuery.of(context);
    return BlocListener<AddExpenseBloc,AddExpenseState>(listener: (context, state) {
      if (state is AddExpenseLoadingState){
        LoadingDialog.show(context);

      }
      else if(state is AddExpenseSuccessState){
        LoadingDialog.close(context);
        if(state.message?.isNotEmpty ?? false){
          AppToast.showInfoToast(state.message!, context);
          final homeBloc = sl.get<HomeBloc>();
          homeBloc.add(HomeEvent.getRecentTransaction());
          context.pop();
        }
      }
      else if(state is AddExpenseErrorState){
        LoadingDialog.close(context);
        if(state.error?.isNotEmpty ?? false){
          AppToast.showInfoToast(state.error!, context);
        }
      }
    },child: Scaffold(
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
                              onChanged:  (value) {
                                if(value.isNotEmpty){
                                  context.read<AddExpenseBloc>().add(AddExpenseEvent.onAmountChange(value ));
                                }
                              },
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
                          BlocBuilder<AddExpenseBloc,AddExpenseState>(builder: (context, state) {
                            return Container(
                              decoration: BoxDecoration(
                                color: appLightColor,
                                borderRadius: BorderRadius.circular(14),
                                border: Border.all(color: appSecondaryColor, width: 1),
                              ),
                              padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 2),
                              child: DropdownButtonHideUnderline(
                                child: DropdownButton<String>(
                                    value: state.addExpenseData.category,
                                    hint: Text(
                                      "Select Category",
                                      style: context.appInterTextStyle(
                                        color: appSecondaryColor,
                                        fontSize: 16,
                                      ),
                                    ),
                                    isExpanded: true,
                                    items: categoryList.map((e) {
                                      return DropdownMenuItem(value:e,child: Text(e));
                                    },).toList(),
                                    onChanged: (val) => context.read<AddExpenseBloc>().add(AddExpenseEvent.onCategoryChange(val!))
                                ),
                              ),
                            );
                          },),
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
                          BlocBuilder<AddExpenseBloc,AddExpenseState>(builder: (context, state) {
                            return  Container(
                              decoration: BoxDecoration(
                                color: appLightColor,
                                borderRadius: BorderRadius.circular(14),
                                border: Border.all(color: appSecondaryColor, width: 1),
                              ),
                              padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 2),
                              child: DropdownButtonHideUnderline(
                                child: DropdownButton<String>(
                                  value: state.addExpenseData.wallet,
                                  hint: Text(
                                    "Select Wallet",
                                    style: context.appInterTextStyle(
                                      color: appSecondaryColor,
                                      fontSize: 16,
                                    ),
                                  ),
                                  isExpanded: true,
                                  items:paymentTypeList.map((e) {
                                    return DropdownMenuItem(value:e,child: Text(e));
                                  },).toList(),
                                  onChanged: (value) => context.read<AddExpenseBloc>().add(AddExpenseEvent.onWalletChange(value!)),
                                ),
                              ),
                            );
                          },),
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
                              controller: _descController,
                              onChanged: (value) => context.read<AddExpenseBloc>().add(AddExpenseEvent.onDescriptionChange(value ?? "")),
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


                          Container(
                            decoration: BoxDecoration(
                              color: appLightColor,
                              borderRadius: BorderRadius.circular(14),
                              border: Border.all(color: appSecondaryColor, width: 1),
                            ),
                            padding: EdgeInsets.symmetric(horizontal: 14),
                            child: TextField(
                              controller: _dateTimeController,
                              readOnly: true,
                              onTap: _selectDateTime,
                              style: context.appInterTextStyle(
                                color: appDarkColor,
                                fontSize: 16,
                              ),
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "Select Date & Time",
                                hintStyle: context.appInterTextStyle(
                                  color: appSecondaryColor,
                                  fontSize: 16,
                                ),
                                suffixIcon: Icon(
                                  Icons.calendar_today,
                                  color: appSecondaryColor,
                                ),
                              ),
                            ),
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
                                context.read<AddExpenseBloc>().add(AddExpenseEvent.addExpense());
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
    ),);
  }
}
