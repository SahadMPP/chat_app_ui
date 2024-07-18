import 'package:chat_app_ai/application/features/chat/bloc/bloc/home_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

class ChatBoxHome extends StatelessWidget {
  const ChatBoxHome({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    TextEditingController controller = TextEditingController();
    context.read<HomeBloc>().add(const HomeEvent.connectingToWebsonket());
    return Container(
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(12)),
      child: Column(
        children: [
          BlocBuilder<HomeBloc, HomeState>(
            builder: (context, state) {
              return Expanded(
                  child: ListView.builder(
                itemCount: state.messages.length,
                itemBuilder: (context, index) {
                  if (state.messages.isEmpty || state.messages.length == 1) {
                    return const EmtyField();
                  } else {
                    return Container(
                      padding: const EdgeInsets.all(12),
                      margin: const EdgeInsets.all(8),
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: index % 2 == 0
                              ? const Color.fromARGB(255, 79, 33, 243)
                              : Colors.white,
                          borderRadius: BorderRadius.circular(8)),
                      child: index % 2 == 0
                          ? Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    state.messages[index],
                                    style: GoogleFonts.roboto(
                                        textStyle: TextStyle(
                                      color: index % 2 == 0
                                          ? Colors.white
                                          : Colors.black,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 12,
                                    )),
                                  ),
                                ),
                                const SizedBox(width: 5),
                                const CircleAvatar(
                                  radius: 15,
                                  backgroundImage:
                                      AssetImage("asset/images/robot.png"),
                                ),
                              ],
                            )
                          : Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const CircleAvatar(
                                  radius: 15,
                                  backgroundImage: AssetImage(
                                      "asset/images/icons8-person-94.png"),
                                ),
                                const SizedBox(width: 5),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    state.messages[index],
                                    style: GoogleFonts.roboto(
                                        textStyle: const TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 12,
                                    )),
                                  ),
                                ),
                              ],
                            ),
                    );
                  }
                },
              ));
            },
          ),
          Container(
            margin: const EdgeInsets.all(8),
            decoration: BoxDecoration(
                color: Colors.grey[300], borderRadius: BorderRadius.circular(5)),
            height: 50,
            child: Row(
              children: [
                Expanded(
                    child: Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: TextField(
                    onSubmitted: (value) {
                      if (controller.text.isNotEmpty) {
                        context.read<HomeBloc>().add(
                            HomeEvent.sentingMassage(text: controller.text));
                        controller.clear();
                      }
                    },
                    controller: controller,
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Enter your Prompt here',
                        hintStyle: GoogleFonts.aBeeZee(
                            textStyle: const TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.w500,
                          fontSize: 12,
                        ))),
                  ),
                )),
                InkWell(
                    onTap: () {
                      if (controller.text.isNotEmpty) {
                        context.read<HomeBloc>().add(
                            HomeEvent.sentingMassage(text: controller.text));
                        controller.clear();
                      }
                    },
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.send_outlined,
                        color: Color.fromARGB(255, 130, 61, 221),
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

class EmtyField extends StatelessWidget {
  const EmtyField({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const SizedBox(height: 30),
        const CircleAvatar(
          radius: 30,
        ),
        const SizedBox(height: 20),
        Text(
          'Experience seamless chatbot interaction with Wavee.AI',
          style: GoogleFonts.roboto(
              textStyle: const TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          )),
        ),
        const SizedBox(height: 10),
        ConstrainedBox(
          constraints: const BoxConstraints(
            maxWidth: 400,
          ),
          child: Text(
            "Get instent answers,helpful recomedation and engaging conversation with our advaced echo bot.",
            textAlign: TextAlign.center,
            style: GoogleFonts.roboto(
                textStyle: const TextStyle(
                    color: Colors.grey,
                    fontSize: 12,
                    fontWeight: FontWeight.w400)),
          ),
        ),
        const SizedBox(height: 40),
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            EmptyFiledBox(),
            EmptyFiledBox(),
            EmptyFiledBox(),
          ],
        )
      ],
    );
  }
}

class EmptyFiledBox extends StatelessWidget {
  const EmptyFiledBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      height: 200,
      width: 200,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: Colors.grey[300]!, width: 1)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const Icon(Icons.abc),
          Text(
            'Capabilities',
            style: GoogleFonts.roboto(
                textStyle: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            )),
          ),
          Text(
            "See what chat offers a wide range of capabilities",
            textAlign: TextAlign.center,
            style: GoogleFonts.roboto(
                textStyle: const TextStyle(
                    color: Colors.grey,
                    fontSize: 12,
                    fontWeight: FontWeight.w400)),
          ),
          const SizedBox(height: 5),
          ElevatedButton(
              style: ButtonStyle(
                  backgroundColor: const WidgetStatePropertyAll(Colors.white),
                  shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                      side: BorderSide(color: Colors.grey[300]!),
                      borderRadius: BorderRadius.circular(30)))),
              onPressed: () {},
              child: Text(
                "Learn more",
                style: GoogleFonts.roboto(
                    textStyle:
                        TextStyle(color: Colors.grey[300]!, fontSize: 14)),
              ))
        ],
      ),
    );
  }
}
