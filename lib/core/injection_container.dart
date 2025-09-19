
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:e_tracker_upi/data/datasources/auth_remote_datasource.dart';
import 'package:e_tracker_upi/data/datasources/transaction_remote_datasource.dart';
import 'package:e_tracker_upi/data/repo/auth_repo_impl.dart';
import 'package:e_tracker_upi/data/repo/preference_repo_impl.dart';
import 'package:e_tracker_upi/data/repo/transaction_repo_impl.dart';
import 'package:e_tracker_upi/domain/repo/auth_repo.dart';
import 'package:e_tracker_upi/domain/repo/preference_repo.dart';
import 'package:e_tracker_upi/domain/repo/transaction_repo.dart';
import 'package:e_tracker_upi/domain/usecase/auth/create_user_usecase.dart';
import 'package:e_tracker_upi/domain/usecase/auth/get_user_usecase.dart';
import 'package:e_tracker_upi/domain/usecase/auth/signin_usecase.dart';
import 'package:e_tracker_upi/domain/usecase/auth/signup_usecase.dart';
import 'package:e_tracker_upi/domain/usecase/transaction/add_expense_usecase.dart';
import 'package:e_tracker_upi/domain/usecase/transaction/add_income_usecase.dart';
import 'package:e_tracker_upi/domain/usecase/transaction/get_transaction_between_date_usecase.dart';
import 'package:e_tracker_upi/domain/usecase/transaction/get_transaction_by_type_usecase.dart';
import 'package:e_tracker_upi/domain/usecase/transaction/get_transaction_filter_usecase.dart';
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


  // Authentication injection
  sl.registerLazySingleton<AuthRemoteDataSource>(() => AuthRemoteDataSourceImpl(
    firebaseAuth: sl(),
    firebaseFirestore: sl()
  ),);
  sl.registerLazySingleton<AuthRepo>(() => AuthRepoImpl(remoteDataSource: sl()),);

  //signup
  sl.registerLazySingleton<SignUpUseCase>(() => SignUpUseCase(authRepo: sl()),);
  sl.registerLazySingleton<CreateUserUseCase>(() => CreateUserUseCase(authRepo: sl()),);


  //login
  sl.registerLazySingleton<SignInUseCase>(() => SignInUseCase(repo: sl()),);

  //profile
  sl.registerLazySingleton<GetUserUseCase>(() => GetUserUseCase(authRepo: sl()),);

  //transaction
  sl.registerLazySingleton<TransactionRemoteDatasource>(() => TransactionRemoteDatasourceImpl(firebaseFirestore: sl(),preferenceRepo: sl()),);
  sl.registerLazySingleton<TransactionRepo>(() => TransactionRepoImpl(transactionRemoteDatasource: sl()));
  sl.registerLazySingleton<AddIncomeUseCase>(() => AddIncomeUseCase(transactionRepo: sl()),);
  sl.registerLazySingleton<AddExpenseUseCase>(() => AddExpenseUseCase(transactionRepo: sl()),);
  sl.registerLazySingleton<GetTransactionBetweenDateUseCase>(() => GetTransactionBetweenDateUseCase(transactionRepo: sl()),);
  sl.registerLazySingleton<GetTransactionFilterUseCase>(() => GetTransactionFilterUseCase(transactionRepo: sl()),);
  sl.registerLazySingleton<GetTransactionByTypeUseCase>(() => GetTransactionByTypeUseCase(transactionRepo: sl()),);



}