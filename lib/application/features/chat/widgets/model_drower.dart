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
        child: Container(
      color: Colors.black,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 30, left: 30),
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
            child: BlocBuilder<HomeBloc, HomeState>(
              builder: (context, state) {
                return ListView.builder(
                    itemCount: state.list.length,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 5),
                        padding: const EdgeInsets.all(12),
                        decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(0.1),
                            borderRadius: BorderRadius.circular(5)),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Icon(
                              Icons.messenger_outline_rounded,
                              color: Colors.white,
                              size: 18,
                            ),
                            const SizedBox(width: 5),
                            ConstrainedBox(constraints:  BoxConstraints(
                              maxWidth:MediaQuery.of(context).size.width *.07,
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
                                context.read<HomeBloc>().add(HomeEvent.deleteModel(massage: MessageModel(messages: state.list[index].messages, title: state.list[index].title,id: state.list[index].id)));
                                context.read<HomeBloc>().add(const HomeEvent.gettingModel());
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
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
            child: ElevatedButton(
                style: ButtonStyle(
                    backgroundColor: const WidgetStatePropertyAll(
                        Color.fromARGB(255, 45, 0, 170)),
                    shape: WidgetStatePropertyAll(ContinuousRectangleBorder(
                        borderRadius: BorderRadius.circular(8)))),
                onPressed: () {
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
                              final data = MessageModel(
                                  messages: [], title: controller.text);
                                  controller.clear();
                              context
                                  .read<HomeBloc>()
                                  .add(HomeEvent.addignModels(massage: data));
                              context
                                  .read<HomeBloc>()
                                  .add(const HomeEvent.gettingModel());

                              Navigator.of(context).pop();
                            },
                          ),
                        ],
                      );
                    },
                  );
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

