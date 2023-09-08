import 'package:easix/easix.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:madkour_task/core/get_it/get_it.dart';
import 'package:madkour_task/modules/agent/database/agent_database.dart';
import 'package:madkour_task/modules/agent/models/customer_model.dart';

///
class SubmitToManger extends HookWidget {
  ///
  const SubmitToManger({required this.customer, super.key});

  ///
  final CustomerModel customer;

  @override
  Widget build(BuildContext context) {
    final managers = useStream(gi<AgentDatabase>().getMangers());
    return AlertDialog(
      title: const Text('Submit to a manger!'),
      content: managers.hasData
          ? SizedBox(
              width: double.maxFinite,
              child: ListView.separated(
                shrinkWrap: true,
                separatorBuilder: (context, index) => 12.ph,
                itemCount: managers.data!.length,
                itemBuilder: (context, index) => ListTile(
                  onTap: () {
                    gi<AgentDatabase>().updateSubmissionStatus(
                      customer.id,
                      managers.data![index].id,
                    );
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('Submitted successfully!'),
                      ),
                    );
                    Navigator.of(context).pop();
                  },
                  title: Text('${managers.data?[index].name}'),
                  leading: const Icon(Icons.person),
                ),
              ),
            )
          : const Center(
              child: CircularProgressIndicator.adaptive(),
            ),
    );
  }
}
