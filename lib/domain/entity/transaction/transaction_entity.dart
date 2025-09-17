import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';

import '../../../data/model/transaction/transaction_model.dart';

part 'transaction_entity.freezed.dart';

@freezed
sealed class TransactionEntity with _$TransactionEntity {
  const factory TransactionEntity({
    required String id,
    required String userId,
    required String category,
    required String wallet,
    required String type,
    String? description,
    required DateTime dateTime,
    required DateTime createdTime,
    required double amount,
    required String formattedDate,
    required String formattedTime,
    required String createdDate,
    required String createdTimeFormatted,
  }) = _TransactionEntity;

  /// Create model from entity
  factory TransactionEntity.fromModel(TransactionModel model) {
    final dateTimeObj = model.dateTime;
    final createdTimeObj = model.createdTime;

    final formattedDate = DateFormat('dd/MM/yyyy').format(dateTimeObj);
    final formattedTime = DateFormat('HH:mm').format(dateTimeObj);
    final createdDate = DateFormat('dd/MM/yyyy').format(createdTimeObj);
    final createdTimeFormatted = DateFormat('HH:mm').format(createdTimeObj);

    return TransactionEntity(
      id: model.id,
      userId: model.userId,
      category: model.category,
      wallet: model.wallet,
      type: model.type,
      description: model.description,
      dateTime: model.dateTime,
      createdTime: model.createdTime,
      amount: model.amount,
      formattedDate: formattedDate,
      formattedTime: formattedTime,
      createdDate: createdDate,
      createdTimeFormatted: createdTimeFormatted,
    );
  }
}
