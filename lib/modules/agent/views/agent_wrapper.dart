import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:madkour_task/modules/admin/models/agent_model.dart';
import 'package:madkour_task/modules/agent/views/agent_signin.dart';
import 'package:madkour_task/modules/agent/views/agent_view.dart';

///
class AgentWrapper extends HookWidget {
  ///
  const AgentWrapper({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = usePageController();
    final user = useState<AgentModel?>(null);
    return Scaffold(
      body: PageView(
        physics: const NeverScrollableScrollPhysics(),
        controller: controller,
        children: [
          AgentSignIn(
            onSignIn: (p0) {
              user.value = p0;
              controller.nextPage(
                duration: const Duration(milliseconds: 300),
                curve: Curves.easeInOut,
              );
            },
          ),
          AgentView(user: user.value),
        ],
      ),
    );
  }
}
