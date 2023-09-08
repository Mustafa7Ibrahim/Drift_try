import 'package:easix/easix.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:madkour_task/core/get_it/get_it.dart';
import 'package:madkour_task/modules/admin/models/agent_model.dart';
import 'package:madkour_task/modules/agent/database/agent_database.dart';
import 'package:madkour_task/modules/agent/models/customer_model.dart';

///
class AddNewCustomer extends HookWidget {
  ///
  const AddNewCustomer({
    required this.user,
    super.key,
  });

  /// the agent model.
  final AgentModel user;

  @override
  Widget build(BuildContext context) {
    final name = useTextEditingController();
    final birthDate = useTextEditingController(text: DateTime(1999).toYMD());
    final address = useTextEditingController();
    return AlertDialog(
      title: const Text('Add new agent'),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          TextField(
            controller: name,
            decoration: const InputDecoration(
              labelText: 'Name',
            ),
          ),
          12.ph,
          TextField(
            controller: address,
            decoration: const InputDecoration(
              labelText: 'Address',
            ),
          ),
          12.ph,
          TextField(
            controller: birthDate,
            onTap: () async {
              final dateTime = await showDatePicker(
                context: context,
                initialDate: DateTime(1999),
                firstDate: DateTime(1950),
                lastDate: DateTime.now(),
              );

              if (dateTime != null) {
                birthDate.text = dateTime.toYMD();
              }
            },
            readOnly: true,
            decoration: const InputDecoration(
              labelText: 'Birth Date',
            ),
          ),
          12.ph,
          ElevatedButton(
            onPressed: () {
              gi<AgentDatabase>().addCustomer(
                CustomerModel(
                  agentId: user.id,
                  name: name.text,
                  birthDate: DateTime.parse(birthDate.text),
                  address: address.text,
                ),
              );
              Navigator.pop(context);
            },
            child: const Text('Add'),
          ),
        ],
      ),
    );
  }
}
