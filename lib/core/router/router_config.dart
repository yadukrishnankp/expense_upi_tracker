import 'package:e_tracker_upi/presentation/auth/screens/signup_screen.dart';
import 'package:e_tracker_upi/presentation/expense/bloc/AddExpenseBloc.dart';
import 'package:e_tracker_upi/presentation/financial_report/bloc/financial_report_bloc.dart';
import 'package:e_tracker_upi/presentation/financial_report/screen/financial_report_screen.dart';
import 'package:e_tracker_upi/presentation/home/bloc/home_bloc.dart';
import 'package:e_tracker_upi/presentation/home/screens/app_home.dart';
import 'package:e_tracker_upi/presentation/home/screens/home_screen.dart';
import 'package:e_tracker_upi/presentation/income/bloc/add_income_bloc.dart';
import 'package:e_tracker_upi/presentation/income/screens/add_income_screen.dart';
import 'package:e_tracker_upi/presentation/notes/bloc/add_note_bloc.dart';
import 'package:e_tracker_upi/presentation/notes/bloc/note_bloc.dart';
import 'package:e_tracker_upi/presentation/notes/screens/add_note_screen.dart';
import 'package:e_tracker_upi/presentation/notes/screens/notes_screen.dart';
import 'package:e_tracker_upi/presentation/profile/screen/profile_screen.dart';
import 'package:e_tracker_upi/presentation/transactions/bloc/transaction_bloc.dart';
import 'package:e_tracker_upi/presentation/transactions/screens/transaction_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../presentation/auth/bloc/login_bloc.dart';
import '../../presentation/auth/bloc/signup_bloc.dart';
import '../../presentation/auth/screens/login_screen.dart';
import '../../presentation/expense/screens/add_expense_screen.dart';
import '../../presentation/home/bloc/app_home_bloc.dart';
import '../../presentation/home/di/home_injection_container.dart';
import '../../presentation/profile/bloc/profile_bloc.dart';
import '../../presentation/splash/screens/splash_screen.dart';
import '../injection_container.dart';
import 'app_router.dart';

final GlobalKey<NavigatorState> _rootNavigatorKey =
GlobalKey<NavigatorState>();

final GoRouter routerConfig = GoRouter(
  initialLocation: AppRoute.splash.path,
  routes: <RouteBase>[
    ShellRoute(
      navigatorKey: _rootNavigatorKey,
      builder: (context, state, child) {
        print("shell route listen");
        HomeInjectionContainer.init();
        return   MultiBlocProvider(
          providers: [
            BlocProvider<AppHomeBloc>(create: (context) => sl<AppHomeBloc>(),),
            BlocProvider<HomeBloc>(create: (context) => sl<HomeBloc>(),),
            BlocProvider<ProfileBloc>(create: (context) => sl<ProfileBloc>(),),
            BlocProvider<TransactionBloc>(create: (context) => sl<TransactionBloc>(),)
          ],
            child: AppHome(child: child));
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
            return BlocProvider(create: (context) => NoteBloc(getNoteUseCase: sl()),
            child: NotesScreen(),);
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
        return BlocProvider(create: (context) => AddExpenseBloc(addExpenseUseCase: sl(),preferenceRepo: sl()),child: const AddExpenseScreen(),);
      },
    ),
    GoRoute(path: AppRoute.add_income.path,
      name: AppRoute.add_income.name,
      builder: (BuildContext context, GoRouterState state) {
        return BlocProvider<AddIncomeBloc>(create: (context) => AddIncomeBloc(addExpenseUseCase: sl(),preferenceRepo: sl()),child: const AddIncomeScreen(),);
      },
    ),
    GoRoute(path: AppRoute.financial_report.path,
      name: AppRoute.financial_report.name,
      builder: (BuildContext context, GoRouterState state) {
        return BlocProvider<FinancialReportBloc>(create: (context) => FinancialReportBloc(getTransactionByTypeUseCase: sl()),
        child: FinancialReportScreen(),);
      },
    ),
    GoRoute(path: AppRoute.add_note.path,
      name: AppRoute.add_note.name,
      builder: (BuildContext context, GoRouterState state) {
        return BlocProvider(create: (context) => AddNoteBloc(addNoteUseCase: sl(), preferenceRepo: sl()),
        child: AddNoteScreen(),);
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
        return      BlocProvider<SignupBloc>(create: (context) =>  SignupBloc(createUserUseCase: sl(), signUpUseCase: sl()),
        child: SignupScreen(),);
      },
    ),
    GoRoute(path: AppRoute.login.path,
      name: AppRoute.login.name,
      builder: (BuildContext context, GoRouterState state) {
        return  BlocProvider<LoginBloc>(create: (context) => LoginBloc(preferenceRepo: sl(), signInUseCase: sl()),
        child: LoginScreen(),);
      },
    ),
  ],
);