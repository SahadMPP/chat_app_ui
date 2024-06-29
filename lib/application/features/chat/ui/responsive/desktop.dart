import 'package:chat_app_ai/application/features/chat/bloc/bloc/home_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeDeskPage extends StatelessWidget {
  final int expandedWidth;

  const HomeDeskPage({super.key, required this.expandedWidth});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const HomeHeader(),
          Expanded(
              flex: 10,
              child: Row(
                children: [
                  const ModelDrowerDesk(),
                  // const ChatDrowerDesk(),
                  Expanded(
                      flex: expandedWidth,
                      child: Column(
                        children: [
                          Expanded(
                              child: Container(
                            color: Colors.white,
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "What are AL Models",
                                    style: GoogleFonts.lilitaOne(
                                        textStyle: const TextStyle(
                                      fontWeight: FontWeight.w700,
                                      color: Colors.black,
                                      fontSize: 18,
                                    )),
                                  ),
                                ),
                              ],
                            ),
                          )),
                          const Expanded(
                            flex: 12,
                            child: ChatBoxHome(),
                          ),
                        ],
                      )),
                ],
              )),
        ],
      ),
    );
  }
}

class ChatBoxHome extends StatelessWidget {
  const ChatBoxHome({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[400],
      child: Column(
        children: [
          Expanded(child: ListView(
            children: [
              Container(
                padding: const EdgeInsets.all(12),
                margin: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8)
                ),
                child: Row(
                  children: [
                    const Icon(Icons.person),
                    const SizedBox(width: 5)
    ,                                            Text('helooo hude',style: GoogleFonts.roboto(
                     textStyle: const TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                     )
                    ),),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.all(12),
                margin: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 45, 0, 170).withOpacity(.9),
                  borderRadius: BorderRadius.circular(8)
                ),
                child: Row(
                  children: [
                    const Icon(Icons.radio_button_checked_outlined),
                    const SizedBox(width: 5),
                    Text('helooo hude',style: GoogleFonts.aBeeZee(
                     textStyle: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                     )
                    ),),
                  ],
                ),
              ),
              
            ],
          )),
          Container(
            margin: const EdgeInsets.all(8),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5)),
            height: 50,
            child: Row(
              children: [
                Expanded(
                    child: Padding(
                  padding:
                      const EdgeInsets.only(left: 10),
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                        hintText:
                            'Enter your Prompt here',
                        hintStyle: GoogleFonts.aBeeZee(
                            textStyle: const TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.w500,
                          fontSize: 12,
                        ))),
                  ),
                )),
                InkWell(
                    onTap: () {},
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.send_outlined,
                        color: Color.fromARGB(
                            255, 130, 61, 221),
                        size: 20,
                      ),
                    ))
              ],
            ),
          )
        ],
      ),
    );
  }
}

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

class ModelDrowerDesk extends StatelessWidget {
  const ModelDrowerDesk({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
      color: Colors.black,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 30,left: 30),
            child: SizedBox(
              height: 50,
              width: double.infinity,
              child: Text(
                "Models",
                style: GoogleFonts.archivo(
                    textStyle: const TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 20,
                )),
              ),
            ),
          ),
          Expanded(
              child: ListView.builder(itemBuilder: (context, index) {
                return  Container(
                margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(5)),
                child: Row(
                  children: [
                    const Icon(
                      Icons.messenger_outline_rounded,
                      color: Colors.white,
                      size: 18,
                    ),
                    const SizedBox(width: 5),
                    Text(
                      "AI Teacher",
                      style: GoogleFonts.aBeeZee(
                          textStyle: const TextStyle(
                        fontSize: 9,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      )),
                    ),
                  ],
                ),
              );
              },)),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 10),
            child: ElevatedButton(
                style: ButtonStyle(
                    backgroundColor: const WidgetStatePropertyAll(
                        Color.fromARGB(255, 45, 0, 170)),
                    shape: WidgetStatePropertyAll(ContinuousRectangleBorder(
                        borderRadius: BorderRadius.circular(8)))),
                onPressed: () {
                  // add value to list
                  
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(
                      Icons.add,
                      color: Colors.white,
                      size: 15,
                    ),
                    const SizedBox(width: 5),
                    Text(
                      'Create Model',
                      style: GoogleFonts.aBeeZee(
                          textStyle: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 9,
                              color: Colors.white)),
                    ),
                  ],
                )),
          ),
        ],
      ),
    ));
  }
}

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
              "Axon",
              style: GoogleFonts.anton(
                  textStyle: const TextStyle(
                letterSpacing: 1.5,
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontSize: 20,
              )),
            ),
            const CircleAvatar(
              radius: 18,
              backgroundColor: Colors.blue,
            ),
          ],
        ),
      ),
    ));
  }
}
