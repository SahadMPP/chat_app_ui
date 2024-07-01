import 'package:chat_app_ai/application/features/chat/bloc/bloc/home_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
      color: const Color.fromARGB(255, 45, 0, 170).withOpacity(.9),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "CHATY",
              style: GoogleFonts.anton(
                  textStyle: const TextStyle(
                letterSpacing: 1.5,
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontSize: 20,
              )),
            ),
            InkWell(
              onTap: () {
                showDialog(
                  context: context,
                  barrierDismissible: false,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: const Text('Are you sure to LogOut'),
                      actions: <Widget>[
                        TextButton(
                          child: const Text('close'),
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                        ),
                        TextButton(
                          child: const Text('Yes'),
                          onPressed: () {
                            context
                                .read<HomeBloc>()
                                .add(HomeEvent.logOut(context: context));
                          },
                        ),
                      ],
                    );
                  },
                );
              },
              child: const CircleAvatar(
                radius: 18,
                backgroundImage:
                    AssetImage("asset/images/icons8-person-94.png"),
                backgroundColor: Colors.white,
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
