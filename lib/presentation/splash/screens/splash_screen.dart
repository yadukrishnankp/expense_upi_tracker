import 'package:e_tracker_upi/core/theme/app_colors.dart';
import 'package:e_tracker_upi/presentation/auth/bloc/signup_bloc.dart';
import 'package:e_tracker_upi/presentation/auth/state/signup_state.dart';
import 'package:e_tracker_upi/presentation/splash/bloc/splash_bloc.dart';
import 'package:e_tracker_upi/presentation/splash/event/splash_event.dart';
import 'package:e_tracker_upi/presentation/splash/state/splash_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import '../../../core/router/app_router.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
   WidgetsBinding.instance.addPostFrameCallback((_) {
     Future.delayed(const Duration(seconds: 2), () {
       if (mounted) {
         context.read<SplashBloc>().add(SplashEvent.initialize());
       }
     });
   });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appPrimaryColor,
      body: BlocListener<SplashBloc,SplashState>(listener: (context, state) {
        final currentState = state;
        if(currentState is SplashSuccessState){
          context.go(AppRoute.home.path);
        }
        else if(currentState is SplashErrorState){
          context.go(AppRoute.login.path);
        }
      },
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CircularProgressIndicator(),
              const SizedBox(height: 20),
              Text(
                  'Loading...',
                  style: TextStyle(
                    fontSize: 20,
                    color: Theme.of(context).colorScheme.onSurface,
                  )
              ),
            ],
          ),
        ),
      ),
    );
  }
}
