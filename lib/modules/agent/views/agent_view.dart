import 'package:easix/easix.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:madkour_task/core/get_it/get_it.dart';
import 'package:madkour_task/modules/admin/models/agent_model.dart';
import 'package:madkour_task/modules/agent/database/agent_database.dart';
import 'package:madkour_task/modules/agent/models/customer_model.dart';
import 'package:madkour_task/modules/agent/views/add_new_customer.dart';
import 'package:madkour_task/modules/agent/views/submit_manager.dart';

/// This is the root widget of the agent module.
class AgentView extends HookWidget {
  /// const constructor for the agent view.
  const AgentView({required this.user, super.key});

  /// the agent model.
  final AgentModel? user;

  @override
  Widget build(BuildContext context) {
    final users = useStream(gi<AgentDatabase>().getCustomers(user!.id));

    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog<void>(
            context: context,
            builder: (context) => AddNewCustomer(
              user: user!,
            ),
          );
        },
        child: const Icon(Icons.add),
      ),
      body: users.hasData
          ? users.data!.isEmpty
              ? const Center(
                  child: Text('No customers yet!'),
                )
              : ListView.separated(
                  separatorBuilder: (context, index) => 12.ph,
                  itemCount: users.data!.length,
                  itemBuilder: (context, index) => ListTile(
                    onTap: () {
                      if (users.data![index].submissionStatus ==
                          SubmissionStatus.submit) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text('Already submitted!'),
                          ),
                        );
                        return;
                      }
                      showDialog<void>(
                        context: context,
                        builder: (context) => SubmitToManger(
                          customer: users.data![index],
                        ),
                      );
                    },
                    title: Text('Name: ${users.data?[index].name}'),
                    subtitle: Text(
                      'Birthdate: ${users.data?[index].birthDate.toYMD()}',
                    ),
                    trailing: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          users.data![index].submissionStatus.title,
                          style: TextStyle(
                            color: users.data![index].submissionStatus ==
                                    SubmissionStatus.submit
                                ? Colors.green
                                : Colors.red,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        if (users.data![index].customerStatus !=
                            CustomerStatus.didNotLookAt)
                          Text(
                            users.data![index].customerStatus.title,
                            style: TextStyle(
                              color: users.data![index].customerStatus ==
                                      CustomerStatus.approved
                                  ? Colors.green
                                  : Colors.red,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                      ],
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
