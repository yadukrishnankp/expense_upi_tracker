import 'package:e_tracker_upi/core/router/app_router.dart';
import 'package:e_tracker_upi/core/style/style_extension.dart';
import 'package:e_tracker_upi/core/theme/app_colors.dart';
import 'package:e_tracker_upi/presentation/profile/bloc/profile_bloc.dart';
import 'package:e_tracker_upi/presentation/profile/event/profile_event.dart';
import 'package:e_tracker_upi/presentation/profile/state/profile_state.dart';
import 'package:e_tracker_upi/shared/widget/app_toast.dart';
import 'package:e_tracker_upi/shared/widget/loading_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../core/injection_container.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  bool _isDarkMode = false;


  @override
  void initState() {

    // TODO: implement initState
    final profileBloc = sl.get<ProfileBloc>();
    if(profileBloc.state.profileData.user == null){
      context.read<ProfileBloc>().init();
    }

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return  BlocListener<ProfileBloc,ProfileState>(listener: (context, state) {
      if (state is ProfileSuccessState){
        LoadingDialog.close(context);
        if(state.profileData.isLoggedIn == false){
          context.goNamed(AppRoute.login.name);
        }
      }
      else if(state is ProfileLoadingState){
        LoadingDialog.show(context);
      }
      else if(state is ProfileErrorState){
        LoadingDialog.close(context);
        AppToast.showErrorToast(state.message, context);
      }

    },
      child: Scaffold(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Text(
            "Profile",
            style: context.appInterTextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 20,
              color: Theme.of(context).colorScheme.onSurface,
            ),
          ),
          centerTitle: true,
          actions: [
            IconButton(
              icon: Icon(Icons.edit, color: appPrimaryColor),
              onPressed: () {
                // Handle edit profile
              },
            ),
          ],
        ),
        body: SafeArea(
          child: Column(
            children: [
              const SizedBox(height: 32),
              Stack(
                alignment: Alignment.topRight,
                children: [
                  Container(
                    child: BlocBuilder<ProfileBloc,ProfileState>(builder: (context, state) =>  Column(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(4),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: appPrimaryColor,
                              width: 3,
                            ),
                          ),
                          child: CircleAvatar(
                            radius: 48,
                            backgroundImage: AssetImage('assets/images/dp.jpeg'),
                            backgroundColor: Colors.white,
                          ),
                        ),
                        const SizedBox(height: 18),
                        Text(
                          state.profileData.user?.email ?? "",
                          style: context.appInterTextStyle(
                            color: appSecondaryColor,
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          state.profileData.user?.name ?? "",
                          style: context.appInterTextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w700,
                            color: appPrimaryColor,
                          ),
                        ),
                      ],
                    ),),
                  )
                ],
              ),
              const SizedBox(height: 32),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(18),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.03),
                        blurRadius: 8,
                        offset: const Offset(0, 2),
                      ),
                    ],
                  ),
                  child: Column(
                    children: [

                      // Replace the dark mode section with a Switch widget
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Dark Mode",
                              style: context.appInterTextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                            ),
                            Switch(
                              value: _isDarkMode,
                              onChanged: (val) {
                                setState(() {
                                  _isDarkMode = val;
                                  // Add your theme switching logic here
                                });
                              },
                              activeColor: appPrimaryColor,
                            ),
                          ],
                        ),
                      ),
                      Divider(height: 1, color: appSecondaryColor),
                      _ProfileListTile(
                        icon: Icons.logout,
                        iconBg: appColorRed,
                        iconColor: appColorRed,
                        title: "Logout",
                        textColor: appColorRed,
                        onTap: (){
                          context.read<ProfileBloc>().add(ProfileEvent.logout());
                        },
                      ),
                      Divider(height: 1, color: appSecondaryColor),
                    ],
                  ),
                ),
              ),
              // ...add more widgets if needed
            ],
          ),
        ),
      ),
    );
  }
}

class _ProfileListTile extends StatelessWidget {
  final IconData icon;
  final Color iconBg;
  final Color iconColor;
  final String title;
  final Color textColor;
  final Function onTap;

  const _ProfileListTile({
    required this.icon,
    required this.iconBg,
    required this.iconColor,
    required this.title,
    required this.textColor,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(horizontal: 18, vertical: 4),
      leading: Container(
        width: 40,
        height: 40,
        decoration: BoxDecoration(
          color: iconBg,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Icon(icon, color: iconColor, size: 22),
      ),
      title: Text(
        title,
        style: context.appInterTextStyle(
          color: textColor,
          fontWeight: FontWeight.w600,
          fontSize: 16,
        ),
      ),
      onTap: () {
        onTap();
        // Handle tap
      },
    );
  }
}
