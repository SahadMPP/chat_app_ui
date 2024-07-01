import 'package:chat_app_ai/application/features/chat/bloc/bloc/home_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

class ChatDrowerDesk extends StatelessWidget {
  const ChatDrowerDesk({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        return Visibility(
          visible: state.isExpanded,
          child: Expanded(
              child: Container(
            color: const Color.fromARGB(255, 238, 238, 238),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    height: 50,
                    width: double.infinity,
                    child: Text(
                      "Chat",
                      style: GoogleFonts.archivo(
                          textStyle: const TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 20,
                      )),
                    ),
                  ),
                ),
                Expanded(
                    child: ListView(
                  children: [
                    Container(
                      margin: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 5),
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 130, 61, 221),
                          borderRadius: BorderRadius.circular(5)),
                      child: Text(
                        "What are AI Models",
                        style: GoogleFonts.aBeeZee(
                            textStyle: const TextStyle(
                          fontSize: 9,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        )),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 5),
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 130, 61, 221),
                          borderRadius: BorderRadius.circular(5)),
                      child: Text(
                        "What are AI Models",
                        style: GoogleFonts.aBeeZee(
                            textStyle: const TextStyle(
                          fontSize: 9,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        )),
                      ),
                    ),
                  ],
                )),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor: const WidgetStatePropertyAll(
                              Color.fromARGB(255, 216, 216, 216)),
                          shape: WidgetStatePropertyAll(
                              ContinuousRectangleBorder(
                                  borderRadius: BorderRadius.circular(8)))),
                      onPressed: () {},
                      child: Row(
                        children: [
                          const Icon(
                            Icons.add,
                            color: Color.fromARGB(255, 45, 0, 170),
                            size: 15,
                          ),
                          const SizedBox(width: 5),
                          Text(
                            'New Chat',
                            style: GoogleFonts.aBeeZee(
                                textStyle: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 9,
                                    color: Color.fromARGB(255, 45, 0, 170))),
                          ),
                        ],
                      )),
                )
              ],
            ),
          )),
        );
      },
    );
  }
}

