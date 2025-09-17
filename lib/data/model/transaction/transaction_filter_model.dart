

import 'package:e_tracker_upi/core/utils/app_date_time_utils.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'transaction_filter_model.freezed.dart';


@freezed
sealed class TransactionFilterModel with _$TransactionFilterModel{
  const factory TransactionFilterModel({
    @Default([])List<String>filterTypeList,
    @Default([])List<String>filterCategoryList,
    @Default([])List<String>filterWalletList,
   @Default("") String dateSort,
   required  AppDateModel dateModel
})=_TransactionFilterModel;
}