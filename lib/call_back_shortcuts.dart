import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CallbackShortcutsApp extends StatefulWidget {
  const CallbackShortcutsApp({Key? key, required Map<ShortcutActivator, VoidCallback> bindings}) : super(key: key);

  @override
  State<CallbackShortcutsApp> createState() => _CallbackShortcutsState();
}

class _CallbackShortcutsState extends State<CallbackShortcutsApp> {
  int count=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CallbackShortcuts Sample'),
      ),
      body: CallbackShortcutsApp(
        bindings:<ShortcutActivator,VoidCallback>{
          SingleActivator(LogicalKeyboardKey.arrowUp):(){
            setState(() =>count=count+1);
          },
          
        }
      ),
    );
  }
}


// class _CallbackShortcutsExampleState extends State<CallbackShortcutsExample> {
//   int count = 0;
//
//   @override
//   Widget build(BuildContext context) {
//     return CallbackShortcuts(
//       bindings: <ShortcutActivator, VoidCallback>{
//         const SingleActivator(LogicalKeyboardKey.arrowUp): () {
//           setState(() => count = count + 1);
//         },
//         const SingleActivator(LogicalKeyboardKey.arrowDown): () {
//           setState(() => count = count - 1);
//         },
//       },
//       child: Focus(
//         autofocus: true,
//         child: Column(
//           children: <Widget>[
//             const Text('Press the up arrow key to add to the counter'),
//             const Text('Press the down arrow key to subtract from the counter'),
//             Text('count: $count'),
//           ],
//         ),
//       ),
//     );
//   }
// }
