import 'package:chat_app_ai/application/features/auth/widgets/custom_textfield.dart';
import 'package:chat_app_ai/application/features/chat/bloc/bloc/home_bloc.dart';
import 'package:chat_app_ai/domain/entities/massage_entity.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

class ModelDrowerDesk extends StatelessWidget {
  const ModelDrowerDesk({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    context.read<HomeBloc>().add(const HomeEvent.gettingModel());
    final TextEditingController controller = TextEditingController();
    return Expanded(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 20),
        ModelButton(controller: controller), 
        const SizedBox(height: 20),
        Text(
          "Today",
          style: GoogleFonts.archivo(
              textStyle: const TextStyle(
            fontWeight: FontWeight.w500,
            color: Colors.white,
            fontSize: 16,
          )),
        ),
        Expanded(
          child: BlocBuilder<HomeBloc, HomeState>(
            builder: (context, state) {
              return ListView.builder(
                  itemCount: state.list.length,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 5),
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.1),
                          border: Border.all(color: Colors.grey[200]!),
                          borderRadius: BorderRadius.circular(30)),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          ConstrainedBox(
                            constraints: BoxConstraints(
                              maxWidth: MediaQuery.of(context).size.width * .07,
                            ),
                            child: Text(
                              state.list[index].title,
                              style: GoogleFonts.aBeeZee(
                                  textStyle: const TextStyle(
                                fontSize: 9,
                                fontWeight: FontWeight.w600,
                                color: Colors.white,
                              )),
                            ),
                          ),
                          const Spacer(),
                          InkWell(
                            onTap: () {
                              context.read<HomeBloc>().add(
                                  HomeEvent.deleteModel(
                                      massage: MessageModel(
                                          messages: state.list[index].messages,
                                          title: state.list[index].title,
                                          id: state.list[index].id)));
                              context
                                  .read<HomeBloc>()
                                  .add(const HomeEvent.gettingModel());
                            },
                            child: const Icon(
                              Icons.delete,
                              color: Colors.red,
                              size: 15,
                            ),
                          ),
                        ],
                      ),
                    );
                  });
            },
          ),
        ),
        const ModerlDownBox(),
        const SizedBox(height: 10),
        ModelButton(controller: controller), 

      ],
    ));
  }
}

class ModelButton extends StatelessWidget {
  const ModelButton({
    super.key,
    required this.controller,
  });

  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: ElevatedButton(
          style: ButtonStyle(
              backgroundColor:
                  const WidgetStatePropertyAll(Colors.transparent),
              shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                  side: BorderSide(color: Colors.grey[200]!),
                  borderRadius: BorderRadius.circular(30)))),
          onPressed: () {
            showModelAlertBox(context, controller);
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
                'NewChat',
                style: GoogleFonts.aBeeZee(
                    textStyle: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 9,
                        color: Colors.white)),
              ),
            ],
          )),
    );
  }
}

class ModerlDownBox extends StatelessWidget {
  const ModerlDownBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8),
      padding: const EdgeInsets.all(8),
      height: 200,
      width: double.infinity,
      decoration: BoxDecoration(
          color: Colors.white.withOpacity(.1),
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: Colors.grey[300]!, width: 1)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const Icon(Icons.abc, color: Colors.white),
          Text(
            'Download App',
            style: GoogleFonts.roboto(
                textStyle: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            )),
          ),
          Text(
            "See what chat offers a wide range of capabilities",
            textAlign: TextAlign.center,
            style: GoogleFonts.roboto(
                textStyle: TextStyle(
                    color: Colors.grey[300],
                    fontSize: 10,
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
                "Download",
                style: GoogleFonts.roboto(
                    textStyle:
                        const TextStyle(color: Colors.pink, fontSize: 10)),
              ))
        ],
      ),
    );
  }
}

showModelAlertBox(BuildContext context, TextEditingController controller) {
  showDialog<void>(
    context: context,
    barrierDismissible: false,
    builder: (BuildContext context) {
      return AlertDialog(
        title: const Text('Add Title'),
        content: SingleChildScrollView(
          child: ListBody(
            children: <Widget>[
              CostomTextField(
                  hintText: "Enter title",
                  isPassword: false,
                  controller: controller,
                  validatorText: "Field is Empty")
            ],
          ),
        ),
        actions: <Widget>[
          TextButton(
            child: const Text('Close'),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
          TextButton(
            child: const Text('Creat'),
            onPressed: () {
              final data = MessageModel(messages: [], title: controller.text);
              controller.clear();
              context
                  .read<HomeBloc>()
                  .add(HomeEvent.addignModels(massage: data));
              context.read<HomeBloc>().add(const HomeEvent.gettingModel());

              Navigator.of(context).pop();
            },
          ),
        ],
      );
    },
  );
}
