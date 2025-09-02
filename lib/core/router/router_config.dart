import 'package:e_tracker_upi/presentation/auth/screens/signup_screen.dart';
import 'package:e_tracker_upi/presentation/financial_report/screen/financial_report_screen.dart';
import 'package:e_tracker_upi/presentation/home/screens/app_home.dart';
import 'package:e_tracker_upi/presentation/home/screens/home_screen.dart';
import 'package:e_tracker_upi/presentation/income/screens/add_income_screen.dart';
import 'package:e_tracker_upi/presentation/notes/screens/add_note_screen.dart';
import 'package:e_tracker_upi/presentation/notes/screens/notes_screen.dart';
import 'package:e_tracker_upi/presentation/profile/profile_screen.dart';
import 'package:e_tracker_upi/presentation/transactions/screens/transaction_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../presentation/auth/screens/login_screen.dart';
import '../../presentation/expense/screens/add_expense_screen.dart';
import '../../presentation/splash/screens/splash_screen.dart';
import 'app_router.dart';

final GlobalKey<NavigatorState> _rootNavigatorKey =
GlobalKey<NavigatorState>();

final GoRouter routerConfig = GoRouter(
  initialLocation: AppRoute.splash.path,
  routes: <RouteBase>[
    ShellRoute(
      navigatorKey: _rootNavigatorKey,
      builder: (context, state, child) {
        return AppHome(child: child);
      },
      routes: [
        // This screen is displayed on the ShellRoute's Navigator.
        GoRoute(
          path: AppRoute.home.path,
          name: AppRoute.home.name,
          builder: (context, state) {
            return const HomeScreen();
          },
        ),
        GoRoute(
          path: AppRoute.transaction.path,
          name: AppRoute.transaction.name,
          builder: (context, state) {
            return const TransactionScreen();
          },
        ),
        GoRoute(
          path: AppRoute.notes.path,
          name: AppRoute.notes.name,
          builder: (context, state) {
            return const NotesScreen();
          },
        ),
        GoRoute(
          path: AppRoute.profile.path,
          name: AppRoute.profile.name,
          builder: (context, state) {
            return const ProfileScreen();
          },
        ),

      ],
    ),
    GoRoute(path: AppRoute.add_expense.path,
      name: AppRoute.add_expense.name,
      builder: (BuildContext context, GoRouterState state) {
        return const AddExpenseScreen();
      },
    ),
    GoRoute(path: AppRoute.add_income.path,
      name: AppRoute.add_income.name,
      builder: (BuildContext context, GoRouterState state) {
        return const AddIncomeScreen();
      },
    ),
    GoRoute(path: AppRoute.financial_report.path,
      name: AppRoute.financial_report.name,
      builder: (BuildContext context, GoRouterState state) {
        return const FinancialReportScreen();
      },
    ),
    GoRoute(path: AppRoute.add_note.path,
      name: AppRoute.add_note.name,
      builder: (BuildContext context, GoRouterState state) {
        return const AddNoteScreen();
      },
    ),
    GoRoute(
      name: AppRoute.splash.name,
      path: AppRoute.splash.path,
      builder: (BuildContext context, GoRouterState state) {
        return const SplashScreen();
      },
    ),
    GoRoute(path: AppRoute.signUp.path,
      name: AppRoute.signUp.name,
      builder: (BuildContext context, GoRouterState state) {
        return const SignupScreen();
      },
    ),
    GoRoute(path: AppRoute.login.path,
      name: AppRoute.login.name,
      builder: (BuildContext context, GoRouterState state) {
        return const LoginScreen();
      },
    ),
  ],
);