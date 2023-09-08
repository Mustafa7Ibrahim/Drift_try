import 'package:easix/easix.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:madkour_task/core/get_it/get_it.dart';
import 'package:madkour_task/modules/admin/database/admin_database.dart';
import 'package:madkour_task/modules/admin/models/agent_model.dart';

/// This is the root widget of the admin module.
class AdminView extends HookWidget {
  /// const constructor for the admin view.
  const AdminView({super.key});

  @override
  Widget build(BuildContext context) {
    final users = useStream(gi<AdminDatabase>().getAllUsers());
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog<void>(
            context: context,
            builder: (context) => const AddNewUser(),
          );
        },
        child: const Icon(Icons.add),
      ),
      body: users.hasData
          ? users.data!.isEmpty
              ? const Center(
                  child: Text('No users Yet!'),
                )
              : ListView.separated(
                  separatorBuilder: (context, index) => 12.ph,
                  itemCount: users.data!.length,
                  itemBuilder: (context, index) => ListTile(
                    title: Text('${users.data?[index].name}'),
                    subtitle: Text('${users.data?[index].role.name}'),
                    trailing: Text(
                      users.data![index].id.toString(),
                    ),
                    leading: const Icon(Icons.person),
                  ),
                )
          : const Center(
              child: CircularProgressIndicator.adaptive(),
            ),
    );
  }
}

///
class AddNewUser extends HookWidget {
  ///
  const AddNewUser({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final role = useState(Role.agent);
    final name = useTextEditingController();
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
          SizedBox(
            width: double.infinity,
            child: DropdownButton<Role>(
              onChanged: (value) => role.value = value!,
              value: role.value,
              isExpanded: true,
              items: const [
                DropdownMenuItem(value: Role.agent, child: Text('Agent')),
                DropdownMenuItem(value: Role.manager, child: Text('Manager')),
              ],
            ),
          ),
          12.ph,
          ElevatedButton(
            onPressed: () {
              gi<AdminDatabase>().addAgent(
                AgentModel(name: name.text, role: role.value),
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
