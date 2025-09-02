import 'package:e_tracker_upi/core/router/app_router.dart';
import 'package:e_tracker_upi/presentation/auth/bloc/signup_bloc.dart';
import 'package:e_tracker_upi/presentation/auth/event/signup_event.dart';
import 'package:e_tracker_upi/presentation/auth/state/signup_state.dart';
import 'package:e_tracker_upi/shared/widget/app_toast.dart';
import 'package:e_tracker_upi/shared/widget/loading_dialog.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/gestures.dart';
import '../../../core/theme/app_colors.dart';
import '../../../core/style/style_extension.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  bool _passwordVisible = false;
  bool _termsAccepted = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Signup',
          style: context.appInterTextStyle(
            color: Theme.of(context).colorScheme.onSurface,
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: IconThemeData(
          color: Theme.of(context).colorScheme.onSurface,
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
           context.pop();
          },
        ),
      ),
      body:  BlocListener<SignupBloc,SignupState>(
        listener: (context, state) {
       final currentState = state;
        if(currentState is SignupLoadingState){
         LoadingDialog.show(context);
       }
     else if(currentState is SignupErrorState){
       LoadingDialog.close(context);
       AppToast.showErrorToast(currentState.message,context);
       }
     else if (currentState is SignupSuccessState) {
          LoadingDialog.close(context);
          if (currentState.message?.isNotEmpty ?? false) {
            AppToast.showInfoToast(
                currentState.message ?? "Account SuccessFully Created",
                context);
          }
          if (currentState.data.navigateToLogin) {
            context.pushNamed(AppRoute.login.name);
          }
        }
      },
        child:  SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 70),
                _buildTextField(
                  controller: _nameController,
                  label: 'Name',
                  obscureText: false,
                ),
                const SizedBox(height: 16),
                _buildTextField(
                  controller: _emailController,
                  label: 'Email',
                  obscureText: false,
                  keyboardType: TextInputType.emailAddress,
                ),
                const SizedBox(height: 16),
                _buildTextField(
                  controller: _passwordController,
                  label: 'Password',
                  obscureText: !_passwordVisible,
                  isPassword: true,
                ),
                const SizedBox(height: 24),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Checkbox(
                      value: _termsAccepted,
                      activeColor: appPrimaryColor,
                      onChanged: (value) {
                        setState(() {
                          _termsAccepted = value ?? false;
                        });
                      },
                    ),
                    Expanded(
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: RichText(
                          textAlign: TextAlign.start,
                          text: TextSpan(
                            style: TextStyle(
                              fontSize: 14,
                              color: Theme.of(context).colorScheme.onSurface,
                              fontFamily: GoogleFonts.inter().fontFamily,
                            ),
                            children: [
                              TextSpan(
                                text: 'By signing up, you agree to the ',
                                style: context.appInterTextStyle(
                                  fontSize: 14,
                                  color: Theme.of(context).colorScheme.onSurface,
                                ),
                              ),
                              TextSpan(
                                text: 'Terms of Service and Privacy Policy',
                                style: context.appInterTextStyle(
                                  fontSize: 14,
                                  color: appPrimaryColor,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: _termsAccepted
                          ? appPrimaryColor
                          : appPrimaryColorLight,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(14),
                      ),
                      padding: const EdgeInsets.symmetric(vertical: 16),
                    ),
                    onPressed: _termsAccepted
                        ? () {


                      context.read<SignupBloc>().add(SignupEvent.signup(email: _emailController.text, password: _passwordController.text,
                      name: _nameController.text));
                      // Handle signup logic
                    }
                        : null,
                    child: Text(
                      'Sign Up',
                      style: context.appInterTextStyle(
                        color: _termsAccepted
                            ? appLightColor
                            : appSecondaryColor,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Center(
                  child: RichText(
                    text: TextSpan(
                      style: TextStyle(
                        fontSize: 14,
                      ),
                      children: [
                        TextSpan(
                          text: 'Already have an account? ',
                          style: context.appInterTextStyle(
                            color: appSecondaryColor,
                            fontSize: 14,
                          ),
                        ),
                        TextSpan(
                          text: 'Login',
                          style: context.appInterTextStyle(
                            color: appPrimaryColor,
                            fontWeight: FontWeight.w600,
                            fontSize: 14,
                          ),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              // Navigate to login screen
                              context.pushNamed(AppRoute.login.name);
                            },
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      )
    );
  }

  Widget _buildTextField({
    required TextEditingController controller,
    required String label,
    bool obscureText = false,
    TextInputType keyboardType = TextInputType.text,
    bool isPassword = false,
  }) {
    return TextFormField(
      controller: controller,
      obscureText: obscureText,
      keyboardType: keyboardType,
      style: context.appInterTextStyle(
        fontSize: 16,
        color: Theme.of(context).colorScheme.onSurface,
      ),
      decoration: InputDecoration(
        labelText: label,
        labelStyle: context.appInterTextStyle(
          fontSize: 16,
          color: appSecondaryColor,
        ),
        floatingLabelBehavior: FloatingLabelBehavior.never,
        border: context.appInputBorder(),
        enabledBorder: context.appInputBorder(),
        focusedBorder: context.appInputBorder(),
        suffixIcon: isPassword
            ? IconButton(
                icon: Icon(
                  obscureText ? Icons.visibility_off : Icons.visibility,
                  color: appSecondaryColor,
                ),
                onPressed: () {
                  setState(() {
                    _passwordVisible = !_passwordVisible;
                  });
                },
              )
            : null,
      ),
    );
  }
}
