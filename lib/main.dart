import 'package:e_tracker_upi/core/injection_container.dart';
import 'package:e_tracker_upi/core/theme/app_theme.dart';
import 'package:e_tracker_upi/presentation/auth/bloc/login_bloc.dart';
import 'package:e_tracker_upi/presentation/auth/bloc/signup_bloc.dart';
import 'package:e_tracker_upi/presentation/home/bloc/app_home_bloc.dart';
import 'package:e_tracker_upi/presentation/profile/bloc/profile_bloc.dart';
import 'package:e_tracker_upi/presentation/splash/bloc/splash_bloc.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'core/router/router_config.dart';
import 'firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  await init();
  runApp( MultiBlocProvider(
    providers: [
      BlocProvider<SplashBloc>(create: (context) => SplashBloc(preferenceRepo: sl())),
    ],
      child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: routerConfig,
      theme:appLightTheme,
      darkTheme: appDarkTheme,
      themeMode: ThemeMode.light,
    );
  }
}

