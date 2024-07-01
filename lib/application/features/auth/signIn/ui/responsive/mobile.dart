import 'package:chat_app_ai/application/features/auth/signIn/bloc/signin_bloc.dart';
import 'package:chat_app_ai/application/features/auth/widgets/custom_login_button.dart';
import 'package:chat_app_ai/application/features/auth/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

class SignINMobPage extends StatefulWidget {
  const SignINMobPage({super.key});

  @override
  State<SignINMobPage> createState() => _SignINMobPageState();
}

class _SignINMobPageState extends State<SignINMobPage> {
  TextEditingController namecontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

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
                  "Agent Login",
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
                  "Hey,Enter your details to get sign in to your account",
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
              Form(
                key: formKey,
                child: Column(
                  children: [
                    CostomTextField(
                      isEmail: true,
                      hintText: "Enter Email",
                      isPassword: false,
                      controller: namecontroller,
                      validatorText: 'email is empty',
                    ),
                    CostomTextField(
                        controller: passwordcontroller,
                        validatorText: 'Password is empty',
                        hintText: "Enter Password",
                        isPassword: true),
                  ],
                ),
              ),
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
              CustomButton(
                  text: "Sign In",
                  fun: () {
                    if (formKey.currentState!.validate()) {
                      context.read<SigninBloc>().add(
                          SigninEvent.homePageNavigation(
                              context: context,
                              email: namecontroller.text,
                              password: passwordcontroller.text));
                    }
                  }),
              const SizedBox(height: 100),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Don\'t have any account?',
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
                      context.read<SigninBloc>().add(
                          SigninEvent.signUpPageNavigation(context: context));
                    },
                    child: Text(
                      'Request Now',
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
