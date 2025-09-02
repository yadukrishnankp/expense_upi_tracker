import 'package:e_tracker_upi/core/router/app_router.dart';
import 'package:e_tracker_upi/presentation/auth/state/login_state.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import '../../../core/theme/app_colors.dart';
import '../../../core/style/style_extension.dart';
import '../../../shared/widget/app_toast.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  bool _passwordVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Login',
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
      body: BlocListener(listener: (context, state) {
        final currentState = state;
        if(currentState is  LoginLoadingState){
          showDialog(context: context, builder: (context){
            return  Center(child: CircularProgressIndicator(color: appPrimaryColor,));
          });
        }
        else if(currentState is LoginErrorState){

          AppToast.showErrorToast(currentState.message,context);
        }
        else if(currentState is LoginSuccessState){

         if(currentState.data.navigateToHome== true){
           context.goNamed(AppRoute.home.name);
         }
        }
      },
      child: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 50),
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
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: context.appPrimaryButtonStyle(),
                  onPressed: () {
                    context.goNamed(AppRoute.home.name);
                    // Handle login logic
                  },
                  child: Text(
                    'Login',
                    style: context.appInterTextStyle(
                      color: appLightColor,
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
                    style: context.appInterTextStyle(
                      fontSize: 14,
                    ),
                    children: [
                      TextSpan(
                        text: "Don't have an account? ",
                        style: context.appInterTextStyle(
                          color: appSecondaryColor,
                          fontSize: 14,
                        ),
                      ),
                      TextSpan(
                        text: 'Sign Up',
                        style: context.appInterTextStyle(
                          color: appPrimaryColor,
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                        ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            // Navigate to signup screen
                            context.pushNamed(AppRoute.signUp.name);
                          },
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),),
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
