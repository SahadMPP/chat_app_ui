import 'package:chat_app_ai/application/features/auth/signIn/bloc/signin_bloc.dart';
import 'package:chat_app_ai/application/features/auth/signUp/bloc/signup_bloc.dart';
import 'package:chat_app_ai/application/features/auth/splash/bloc/bloc/splash_bloc.dart';
import 'package:chat_app_ai/application/features/auth/splash/ui/splash.dart';
import 'package:chat_app_ai/application/features/chat/bloc/bloc/home_bloc.dart';
import 'package:chat_app_ai/domain/entities/user_entity.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';

void main() async {
  await Hive.initFlutter();
  if (!Hive.isAdapterRegistered(UserAdapter().typeId)) {
    Hive.registerAdapter(UserAdapter());
  }
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => SplashBloc()),
        BlocProvider(create: (context) => SigninBloc()),
        BlocProvider(create: (context) => SignupBloc()),
        BlocProvider(create: (context) => HomeBloc()),
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SplashPage(),
      ),
    );
  }
}




// class MyHomePage extends StatefulWidget {
//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   final TextEditingController _controller = TextEditingController();
//   WebSocketChannel? _channel;
//   List<String> _messages = [];
//   String _statusMessage = '';

//   @override
//   void initState() {
//     super.initState();
//     _connectToWebSocket();
//   }

//   void _connectToWebSocket() {
//     try {
//       _channel = IOWebSocketChannel.connect('wss://echo.websocket.org');
//       _channel!.stream.listen(
//         (message) {
//           setState(() {
//             _messages.add(message);
//           });
//         },
//         onError: (error) {
//           print('WebSocket error: $error');
//           setState(() {
//             _statusMessage = 'WebSocket error: $error';
//           });
//         },
//         onDone: () {
//           print('WebSocket connection closed');
//           setState(() {
//             _statusMessage = 'WebSocket connection closed';
//           });
//         },
//       );
//     } catch (e) {
//       print('WebSocket connection error: $e');
//       setState(() {
//         _statusMessage = 'WebSocket connection error: $e';
//       });
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Flutter WebSocket Echo'),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           children: <Widget>[
//             Form(
//               child: TextFormField(
//                 controller: _controller,
//                 decoration: InputDecoration(labelText: 'Send a message'),
//               ),
//             ),
//             SizedBox(height: 24),
//             Expanded(
//               child: ListView.builder(
//                 itemCount: _messages.length,
//                 itemBuilder: (context, index) {
//                   return ListTile(
//                     title: Text(_messages[index]),
//                   );
//                 },
//               ),
//             ),
//             SizedBox(height: 24),
//             Text(_statusMessage),
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _sendMessage,
//         tooltip: 'Send message',
//         child: Icon(Icons.send),
//       ),
//     );
//   }

//   void _sendMessage() {
//     if (_controller.text.isNotEmpty) {
//       _channel?.sink.add(_controller.text);
//     }
//   }

//   @override
//   void dispose() {
//     _channel?.sink.close();
//     super.dispose();
//   }
// }
