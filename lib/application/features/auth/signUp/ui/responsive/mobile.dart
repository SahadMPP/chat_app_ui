import 'package:chat_app_ai/application/features/auth/signUp/bloc/signup_bloc.dart';
import 'package:chat_app_ai/application/features/auth/widgets/custom_login_button.dart';
import 'package:chat_app_ai/application/features/auth/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUpMobPage extends StatelessWidget {
  const SignUpMobPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            children: [
              const SizedBox(height: 50),
              Align(
                alignment: Alignment.topCenter,
                child: Text(
                  "Register Here",
                  style: GoogleFonts.aBeeZee(
                    textStyle: const TextStyle(
                        color: Colors.black,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Text(
                  "Hey,Enter your details to get sign up to your account",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.aBeeZee(
                    textStyle: const TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ),
              const SizedBox(height: 40),
              const CostomTextField(hintText: "Enter Name", isPassword: false),
              const CostomTextField(hintText: "Enter Email", isPassword: false),
              const CostomTextField(
                  hintText: "Enter Password", isPassword: true),
              const CostomTextField(
                  hintText: "Conform Password", isPassword: true),
              const SizedBox(height: 10),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Having trouble in sign in?',
                  style: GoogleFonts.aBeeZee(
                    textStyle: const TextStyle(
                        color: Colors.black,
                        fontSize: 10,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ),
              const SizedBox(height: 40),
              CustomButton(text: "Sign Up", fun: () {
                      context.read<SignupBloc>().add(SignupEvent.registerUser(context: context));
              }),
              const SizedBox(height: 100),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Do you have Already an account?',
                    style: GoogleFonts.aBeeZee(
                      textStyle: const TextStyle(
                          color: Colors.black45,
                          fontSize: 10,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  const SizedBox(width: 5),
                  InkWell(
                    onTap: () {
                      context.read<SignupBloc>().add(SignupEvent.navigatingToSignIn(context: context));
                    },
                    child: Text(
                      'Sign in',
                      style: GoogleFonts.aBeeZee(
                        textStyle: const TextStyle(
                            color: Colors.black,
                            fontSize: 11,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
