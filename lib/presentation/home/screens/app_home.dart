import 'package:e_tracker_upi/core/router/app_router.dart';
import 'package:e_tracker_upi/presentation/home/bloc/app_home_bloc.dart';
import 'package:e_tracker_upi/presentation/home/state/app_home_state.dart';
import 'package:e_tracker_upi/presentation/home/widgets/app_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../core/theme/app_colors.dart';

class AppHome extends StatefulWidget {
  final Widget child;
  const AppHome({super.key, required this.child});

  @override
  State<AppHome> createState() => _AppHomeState();
}

class _AppHomeState extends State<AppHome> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final scaleFactor = size.width / 400;
    return Scaffold(
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 50),
            child: Container(
              child: BlocConsumer<AppHomeBloc, AppHomeState>(
                builder: (context, state) {
                  return Stack(
                    children: [
                      widget.child,
                      BlocBuilder<AppHomeBloc, AppHomeState>(
                        builder: (context, state) {
                          // 45-degree animation for both show/hide
                          final double fabDistance = 80.0;
                          final double fabOffset = 60.0;
                          return Stack(
                            children: [
                              // Left FAB
                              AnimatedPositioned(
                                duration: const Duration(milliseconds: 500),
                                curve: Curves.easeOutCubic,
                                left: MediaQuery.of(context).size.width / 2 - fabOffset - 28,
                                bottom: state.showFabMenu ? fabDistance : 0,
                                child: AnimatedOpacity(
                                  duration: const Duration(milliseconds: 350),
                                  opacity: state.showFabMenu ? 1.0 : 0.0,
                                  child: SizedBox(
                                    width: 56,
                                    height: 56,
                                    child: FloatingActionButton(
                                      shape: const CircleBorder(),
                                      heroTag: "fab_left",
                                      backgroundColor: appColorGreen,
                                      onPressed: () {
                                        context.pushNamed(AppRoute.add_income.name);
                                        // Left FAB action
                                      },
                                      child: ClipOval(
                                        child: Image.asset(
                                          'assets/images/Income_white.png', // Replace with your asset path
                                          width: 32,
                                          height: 32,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              // Right FAB
                              AnimatedPositioned(
                                duration: const Duration(milliseconds: 500),
                                curve: Curves.easeOutCubic,
                                right: MediaQuery.of(context).size.width / 2 - fabOffset - 28,
                                bottom: state.showFabMenu ? fabDistance : 0,
                                child: AnimatedOpacity(
                                  duration: const Duration(milliseconds: 350),
                                  opacity: state.showFabMenu ? 1.0 : 0.0,
                                  child: SizedBox(
                                    width: 56,
                                    height: 56,
                                    child: FloatingActionButton(
                                      shape: const CircleBorder(),
                                      heroTag: "fab_right",
                                      backgroundColor: appColorRed,
                                      onPressed: () {
                                        context.pushNamed(AppRoute.add_expense.name);
                                        // Right FAB action
                                      },
                                      child: ClipOval(
                                        child: Image.asset(
                                          'assets/images/expense_white.png', // Replace with your asset path
                                          width: 32,
                                          height: 32,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          );
                        },
                      )
                    ],
                  );
                },
                listener: (context, state) {
                  state.bottomBarMenu.when(
                      home: () => context.pushNamed(AppRoute.home.name),
                      transactions: () => context.pushNamed(AppRoute.transaction.name),
                      notes: () => context.pushNamed(AppRoute.notes.name),
                      profile: () => context.pushNamed(AppRoute.profile.name));
                },
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
              child: AppBottomBar())
        ],
      ),
    );
  }
}
