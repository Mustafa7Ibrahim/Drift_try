// import 'package:isar/isar.dart';
// import 'package:madkour_task/core/get_it/get_it.dart';
// import 'package:madkour_task/modules/admin/models/agent_model.dart';
// import 'package:madkour_task/modules/agent/models/customer_model.dart';

// /// Database for agent
// class AgentDatabase {
//   final _isarCustomer = gi<Isar>().customerModels;
//   final _isarAgent = gi<Isar>().agentModels;

//   /// get agent data by id
//   Future<AgentModel?> getAgentById(int id) async {
//     final agent = await _isarAgent.get(id);
//     if (agent?.role != Role.agent) {
//       return null;
//     }
//     return agent;
//   }
// // 
//   /// get all customer where a agentId is equal to the agentId that passed
//   Stream<List<CustomerModel>> getCustomers(int agentId) {
//     final list = _isarCustomer
//         .filter()
//         .agentIdEqualTo(agentId)
//         .watch(fireImmediately: true);
//     return list;
//   }

//   /// add new customer
//   Future<void> addCustomer(CustomerModel customerModel) async {
//     await gi<Isar>().writeTxn(() async {
//       await _isarCustomer.put(customerModel);
//     });
//   }

//   /// update submission status
//   Future<void> updateSubmissionStatus(int id, int mangerId) async {
//     await gi<Isar>().writeTxn(() async {
//       final customer = await _isarCustomer.get(id);
//       customer?.submissionStatus = SubmissionStatus.submit;
//       customer?.mangerId = mangerId;
//       await _isarCustomer.put(customer!);
//     });
//   }

//   /// get all agents with a role of manger
//   Stream<List<AgentModel>> getMangers() {
//     final list = _isarAgent
//         .filter()
//         .roleEqualTo(Role.manager)
//         .watch(fireImmediately: true);
//     return list;
//   }
// }
