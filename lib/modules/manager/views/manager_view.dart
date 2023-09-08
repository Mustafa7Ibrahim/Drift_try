import 'package:easix/easix.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:madkour_task/core/get_it/get_it.dart';
import 'package:madkour_task/modules/admin/models/agent_model.dart';
import 'package:madkour_task/modules/agent/models/customer_model.dart';
import 'package:madkour_task/modules/manager/database/manager_database.dart';

/// This is the root widget of the manager module.
class ManagerView extends HookWidget {
  /// const constructor for the manager view.
  const ManagerView({required this.user, super.key});

  /// the agent model.
  final AgentModel? user;

  @override
  Widget build(BuildContext context) {
    final filter = useState<bool>(false);
    final users = useStream(
      gi<ManagerDatabase>()
          .getSubmittedCustomers(notApprovedOnly: filter.value),
    );

    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          filter.value = !filter.value;
        },
        child: const Icon(Icons.filter_alt_outlined),
      ),
      body: users.hasData
          ? ListView.separated(
              separatorBuilder: (context, index) => 12.ph,
              itemCount: users.data!.length,
              itemBuilder: (context, index) => ListTile(
                onTap: () {
                  showDialog<void>(
                    context: context,
                    builder: (context) => AlertDialog(
                      title: const Text('Approve'),
                      content: const Text('Are you sure?'),
                      actions: [
                        TextButton(
                          onPressed: () {
                            gi<ManagerDatabase>().updateCustomerStatus(
                              users.data![index].id,
                              CustomerStatus.notApproved,
                            );
                            Navigator.of(context).pop();
                          },
                          child: const Text('Not Approve'),
                        ),
                        TextButton(
                          onPressed: () {
                            gi<ManagerDatabase>().updateCustomerStatus(
                              users.data![index].id,
                              CustomerStatus.approved,
                            );
                            Navigator.of(context).pop();
                          },
                          child: const Text('Approve'),
                        ),
                      ],
                    ),
                  );
                },
                title: Text('Name: ${users.data?[index].name}'),
                subtitle: Text(
                  'Birthdate: ${users.data?[index].birthDate.toYMD()}',
                ),
                trailing: users.data![index].customerStatus ==
                        CustomerStatus.didNotLookAt
                    ? const SizedBox()
                    : Text(
                        users.data![index].customerStatus.title,
                        style: TextStyle(
                          color: users.data![index].customerStatus ==
                                  CustomerStatus.approved
                              ? Colors.green
                              : Colors.red,
                          fontWeight: FontWeight.bold,
                        ),
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
