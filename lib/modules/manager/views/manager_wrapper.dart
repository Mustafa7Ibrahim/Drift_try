import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:madkour_task/modules/admin/models/agent_model.dart';
import 'package:madkour_task/modules/manager/views/manager_signin.dart';
import 'package:madkour_task/modules/manager/views/manager_view.dart';

///
class ManagerWrapper extends HookWidget {
  ///
  const ManagerWrapper({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = usePageController();
    final user = useState<AgentModel?>(null);
    return Scaffold(
      body: PageView(
        physics: const NeverScrollableScrollPhysics(),
        controller: controller,
        children: [
          ManagerSignIn(
            onSignIn: (p0) {
              user.value = p0;
              controller.nextPage(
                duration: const Duration(milliseconds: 300),
                curve: Curves.easeInOut,
              );
            },
          ),
          ManagerView(user: user.value),
        ],
      ),
    );
  }
}
