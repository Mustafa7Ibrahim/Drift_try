// import 'package:easix/easix.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_hooks/flutter_hooks.dart';
// import 'package:madkour_task/core/get_it/get_it.dart';
// import 'package:madkour_task/modules/admin/models/agent_model.dart';
// import 'package:madkour_task/modules/manager/database/manager_database.dart';

// /// This is the root widget of the agent module.
// class ManagerSignIn extends HookWidget {
//   /// const constructor for the agent view.
//   const ManagerSignIn({required this.onSignIn, super.key});

//   /// the agent model.
//   final void Function(AgentModel) onSignIn;

//   @override
//   Widget build(BuildContext context) {
//     final name = useTextEditingController();
//     final password = useTextEditingController();
//     return Scaffold(
//       body: Padding(
//         padding: const EdgeInsets.all(24),
//         child: Column(
//           children: [
//             const Center(
//               child: Icon(
//                 Icons.person,
//                 size: 64,
//               ),
//             ),
//             24.ph,
//             TextField(
//               controller: name,
//               decoration: const InputDecoration(
//                 hintText: 'Name',
//               ),
//             ),
//             24.ph,
//             TextField(
//               controller: password,
//               keyboardType: TextInputType.number,
//               decoration: const InputDecoration(
//                 hintText: 'Password',
//               ),
//             ),
//             24.ph,
//             ElevatedButton(
//               onPressed: () async {
//                 final user = await gi<ManagerDatabase>().getManagerById(
//                   int.parse(password.text),
//                 );
//                 if (user != null) {
//                   onSignIn(user);
//                 } else {
//                   // ignore: use_build_context_synchronously
//                   ScaffoldMessenger.of(context).showSnackBar(
//                     const SnackBar(
//                       content: Text('Invalid name or password'),
//                     ),
//                   );
//                 }
//               },
//               child: const Text('Sign in'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
