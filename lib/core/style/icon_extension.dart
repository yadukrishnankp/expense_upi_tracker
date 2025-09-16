import 'package:flutter/material.dart';

extension CategoryIconsExtension on String {
  IconData get categoryIcon {
    switch (this.toLowerCase()) {
    // Income categories
      case 'salary':
        return Icons.work;
      case 'passive income':
        return Icons.trending_up;
      case 'real estate':
        return Icons.home;
      case 'others':
        return Icons.more_horiz;

    // Expense categories
      case 'food':
        return Icons.restaurant;
      case 'groceries':
        return Icons.shopping_cart;
      case 'entertainment':
        return Icons.movie;
      case 'utility bills':
        return Icons.receipt_long;
      case 'shopping':
        return Icons.shopping_bag;
      case 'rent':
        return Icons.house;
      case 'fuel':
        return Icons.local_gas_station;

      default:
        return Icons.category;
    }
  }
}