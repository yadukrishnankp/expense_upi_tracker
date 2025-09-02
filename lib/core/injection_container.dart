
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:e_tracker_upi/data/datasources/auth_remote_datasource.dart';
import 'package:e_tracker_upi/data/repo/auth_repo_impl.dart';
import 'package:e_tracker_upi/data/repo/preference_repo_impl.dart';
import 'package:e_tracker_upi/domain/repo/auth_repo.dart';
import 'package:e_tracker_upi/domain/repo/preference_repo.dart';
import 'package:e_tracker_upi/domain/usecase/create_user_usecase.dart';
import 'package:e_tracker_upi/domain/usecase/signin_usecase.dart';
import 'package:e_tracker_upi/domain/usecase/signup_usecase.dart';
import 'package:e_tracker_upi/presentation/auth/bloc/signup_bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

final sl = GetIt.instance;

Future<void> init() async {
  
  sl.registerLazySingleton(() => FirebaseAuth.instance,);
  sl.registerLazySingleton(() => FirebaseFirestore.instance,);
  sl.registerSingleton<SharedPreferences> (
    await SharedPreferences.getInstance(),
  );

  sl.registerLazySingleton<PreferenceRepo>(() => PreferenceRepoImpl(sharedPreferences: sl()),);

  sl.registerLazySingleton<AuthRemoteDataSource>(() => AuthRemoteDataSourceImpl(
    firebaseAuth: sl(),
    firebaseFirestore: sl()
  ),);

  sl.registerLazySingleton<AuthRepo>(() => AuthRepoImpl(remoteDataSource: sl()),);

  sl.registerLazySingleton<SignUpUseCase>(() => SignUpUseCase(authRepo: sl()),);
  sl.registerLazySingleton<CreateUserUseCase>(() => CreateUserUseCase(authRepo: sl()),);
  sl.registerLazySingleton<SignInUseCase>(() => SignInUseCase(repo: sl()),);

  sl.registerLazySingleton<SignupBloc>(() => SignupBloc(signUpUseCase: sl(), createUserUseCase:sl(),),);

}