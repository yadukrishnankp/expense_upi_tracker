import 'package:e_tracker_upi/domain/repo/auth_repo.dart';
import 'package:e_tracker_upi/domain/repo/preference_repo.dart';
import 'package:e_tracker_upi/domain/usecase/auth/get_user_usecase.dart';
import 'package:e_tracker_upi/presentation/profile/event/profile_event.dart';
import 'package:e_tracker_upi/presentation/profile/state/profile_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProfileBloc extends Bloc<ProfileEvent,ProfileState>{
  final PreferenceRepo preferenceRepo;
  final GetUserUseCase getUserUseCase;
  final AuthRepo authRepo;
  ProfileBloc({required this.getUserUseCase, required this.authRepo, required this.preferenceRepo}) : super (ProfileState.initial(profileData: ProfileData())){
    on<ProfileLogoutEvent>(_logout);
    on<ProfileGetUserEvent>(_getUser);
  }




    Future<void>init()async{
     add(ProfileEvent.getUser());
   }

  _logout(ProfileLogoutEvent event,Emitter<ProfileState> emit)async{
    final result = await authRepo.signOut();
    preferenceRepo.saveUserId("");
    result.fold((l) => emit(ProfileErrorState(message: "Error SignOut", profileData: state.profileData)),
        (r) => emit(ProfileSuccessState(profileData: state.profileData.copyWith(
          isLoggedIn: false
        ))),);
  }

  _getUser(ProfileGetUserEvent event, Emitter<ProfileState> emit)async {
    emit(ProfileLoadingState(profileData: state.profileData));
    final  userId =await  preferenceRepo.getUserId();
    print("_getUser  ${userId}");
    final  result = await getUserUseCase.call(userId??"");
    result.fold(
            (error) =>emit(ProfileErrorState(message: error, profileData: state.profileData)) ,
        (user) => emit(ProfileSuccessState(profileData: state.profileData.copyWith(
      user: user
    )),));

  }
}