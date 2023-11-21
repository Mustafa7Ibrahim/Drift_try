// import 'package:isar/isar.dart';
// import 'package:madkour_task/core/get_it/get_it.dart';
// import 'package:madkour_task/modules/admin/models/agent_model.dart';
// import 'package:madkour_task/modules/agent/models/customer_model.dart';

// /// Database manager for manager
// class ManagerDatabase {
//   final _isarCustomer = gi<Isar>().customerModels;
//   final _isarAgent = gi<Isar>().agentModels;

//   /// get agent data by id
//   Future<AgentModel?> getManagerById(int id) async {
//     final agent = await _isarAgent.get(id);
//     if (agent?.role != Role.manager) {
//       return null;
//     }
//     return agent;
//   }

//   /// get all customer where a submissionStatus is equal to
//   /// the submissionStatus.submit
//   Stream<List<CustomerModel>> getSubmittedCustomers({
//     bool notApprovedOnly = false,
//   }) {
//     Stream<List<CustomerModel>> list;
//     if (notApprovedOnly) {
//       list = _isarCustomer
//           .filter()
//           .submissionStatusEqualTo(SubmissionStatus.submit)
//           .customerStatusEqualTo(CustomerStatus.didNotLookAt)
//           .or()
//           .customerStatusEqualTo(CustomerStatus.notApproved)
//           .watch(fireImmediately: true);
//     } else {
//       list = _isarCustomer
//           .filter()
//           .submissionStatusEqualTo(SubmissionStatus.submit)
//           .watch(fireImmediately: true);
//     }
//     return list;
//   }

//   /// update customer status
//   Future<void> updateCustomerStatus(
//     int id,
//     CustomerStatus customerStatus,
//   ) async {
//     await gi<Isar>().writeTxn(() async {
//       final customer = await _isarCustomer.get(id);
//       customer?.customerStatus = customerStatus;
//       await _isarCustomer.put(customer!);
//     });
//   }
// }
