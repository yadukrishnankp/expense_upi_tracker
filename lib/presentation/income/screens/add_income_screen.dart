import 'package:e_tracker_upi/core/utils/app_date_time_utils.dart';
import 'package:e_tracker_upi/core/utils/id_generator.dart';
import 'package:e_tracker_upi/presentation/income/bloc/add_income_bloc.dart';
import 'package:e_tracker_upi/presentation/income/event/add_income_event.dart';
import 'package:e_tracker_upi/presentation/income/state/add_income_state.dart';
import 'package:e_tracker_upi/shared/widget/app_toast.dart';
import 'package:e_tracker_upi/shared/widget/loading_dialog.dart';
import 'package:flutter/material.dart';
import 'package:e_tracker_upi/core/style/style_extension.dart';
import 'package:e_tracker_upi/core/theme/app_colors.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';

class AddIncomeScreen extends StatefulWidget {
  const AddIncomeScreen({super.key});

  @override
  State<AddIncomeScreen> createState() => _AddIncomeScreenState();
}

class _AddIncomeScreenState extends State<AddIncomeScreen> {
  bool isRepeat = false;
  String? selectedCategory;
  String? selectedWallet;
  final TextEditingController _amountController = TextEditingController(text: "0");
  final TextEditingController _dateTimeController = TextEditingController();
  final TextEditingController _descController = TextEditingController();


  DateTime selectedDateTime = DateTime.now();
  int dateTimeEpoch = DateTime.now().millisecondsSinceEpoch;

  final categoryList = ["Salary","Passive Income","Real Estate","Others"];
  final paymentTypeList = ["Bank","Upi","Cash"];

  @override
  void initState() {
    super.initState();
    // Initialize with current date time
    _updateDateTimeDisplay();

  }

  void _updateDateTimeDisplay() {
    final formattedDate = DateFormat('dd/MM/yyyy').format(selectedDateTime);
    final formattedTime = DateFormat('HH:mm').format(selectedDateTime);
    _dateTimeController.text = '$formattedDate $formattedTime';
    dateTimeEpoch = selectedDateTime.millisecondsSinceEpoch;
    _dateTimeController.text = AppDateTimeUtils.formatFull(selectedDateTime);
    context.read<AddIncomeBloc>().add(AddIncomeEvent.onDateTimeChange(selectedDateTime));


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
    final padding = EdgeInsets.symmetric(horizontal: 20.0);

    return BlocListener<AddIncomeBloc,AddIncomeState>(listener: (context, state) {
      if (state is AddIncomeLoadingState){
        LoadingDialog.show(context);

      }
      else if(state is AddIncomeSuccessState){
        LoadingDialog.close(context);
        if(state.message?.isNotEmpty ?? false){
          AppToast.showInfoToast(state.message!, context);
          context.pop();
        }
      }
      else if(state is AddIncomeErrorState){
        LoadingDialog.close(context);
        if(state.error?.isNotEmpty ?? false){
          AppToast.showInfoToast(state.error!, context);
        }
      }
    },
        child: Scaffold(
          backgroundColor: appLightColor,
          body: Stack(
            children: [
              // Top colored background
              Container(
                height: media.size.height * 0.32,
                width: double.infinity,
                color: appColorGreen,
              ),
              // Main content
              SafeArea(
                child: Column(
                  children: [
                    // AppBar Row
                    Padding(
                      padding: EdgeInsets.only(
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
                              "Income",
                              style: context.appInterTextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 20,
                                color: appLightColor,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          SizedBox(width: 48), // To balance the back button
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
                                  onChanged: (value) {
                                    if(value.isNotEmpty){
                                      context.read<AddIncomeBloc>().add(AddIncomeEvent.onAmountChange(value));
                                    }
                                  },
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
                          borderRadius: BorderRadius.vertical(top: Radius.circular(28)),
                        ),
                        child: SingleChildScrollView(
                          padding: EdgeInsets.only(top: 28, left: 20, right: 20, bottom: 16),
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
                              BlocBuilder<AddIncomeBloc,AddIncomeState>(builder: (context, state) => Container(
                                decoration: BoxDecoration(
                                  color: appLightColor,
                                  borderRadius: BorderRadius.circular(14),
                                  border: Border.all(color: appSecondaryColor, width: 1),
                                ),
                                padding: EdgeInsets.symmetric(horizontal: 14, vertical: 2),
                                child: DropdownButtonHideUnderline(
                                  child: DropdownButton<String>(
                                    value: state.addIncomeData.category,
                                    hint: Text(
                                      "Select Category",
                                      style: context.appInterTextStyle(
                                        color: appSecondaryColor,
                                        fontSize: 16,
                                      ),
                                    ),
                                    isExpanded: true,
                                    items: categoryList.map((e) {
                                      return DropdownMenuItem(value : e,child: Text(e));
                                    },).toList(),
                                    onChanged: (value) {
                                      context.read<AddIncomeBloc>().add(AddIncomeEvent.onCategoryChange(value!));
                                    },
                                  ),
                                ),
                              ),),
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
                              BlocBuilder<AddIncomeBloc,AddIncomeState>(builder: (context, state) =>   Container(
                                decoration: BoxDecoration(
                                  color: appLightColor,
                                  borderRadius: BorderRadius.circular(14),
                                  border: Border.all(color: appSecondaryColor, width: 1),
                                ),
                                padding: EdgeInsets.symmetric(horizontal: 14, vertical: 2),
                                child: DropdownButtonHideUnderline(
                                  child: DropdownButton<String>(
                                    value: state.addIncomeData.wallet,
                                    hint: Text(
                                      "Select Wallet",
                                      style: context.appInterTextStyle(
                                        color: appSecondaryColor,
                                        fontSize: 16,
                                      ),
                                    ),
                                    isExpanded: true,
                                    items: paymentTypeList.map((e) => DropdownMenuItem(value:e,child: Text(e)) ,).toList(),
                                    onChanged: (value) => context.read<AddIncomeBloc>().add(AddIncomeEvent.onWalletChange(value!)),
                                  ),
                                ),
                              ),),
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
                                padding: EdgeInsets.symmetric(horizontal: 14),
                                child: TextField(
                                  controller: _descController,
                                  style: context.appInterTextStyle(
                                    color: appDarkColor,
                                    fontSize: 16,
                                  ),
                                  onChanged: (value) {
                                    if(value.isNotEmpty){
                                      context.read<AddIncomeBloc>().add(AddIncomeEvent.onDescriptionChange(value));
                                    }
                                  },
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
                              // Date Time Field
                              Text(
                                "Date & Time",
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
                              const SizedBox(height: 18),
                              // Attachment Option

                              const SizedBox(height: 18),

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
                                    padding: EdgeInsets.symmetric(vertical: 16),
                                  ),
                                  onPressed: () {
                                    context.read<AddIncomeBloc>().add(AddIncomeEvent.addIncome());
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
