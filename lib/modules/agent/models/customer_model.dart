import 'package:isar/isar.dart';

part 'customer_model.g.dart';

/// customer model that contain a name birthdate and address
@Collection()
class CustomerModel {
  /// const constructor for the customer model.
  CustomerModel({
    required this.name,
    required this.birthDate,
    required this.address,
    this.customerStatus = CustomerStatus.didNotLookAt,
    this.submissionStatus = SubmissionStatus.notSubmit,
    this.mangerId,
    this.agentId,
  });

  /// id
  Id id = Isar.autoIncrement;

  /// the name of the customer.
  final String name;

  /// the birthdate of the customer.
  final DateTime birthDate;

  /// the address of the customer.
  final String address;

  /// agent id
  int? agentId;

  /// int manger id
  int? mangerId;

  /// submission status
  @Enumerated(EnumType.name)
  SubmissionStatus submissionStatus;

  /// customer status
  @Enumerated(EnumType.name)
  CustomerStatus customerStatus;
}

/// submission status for the agent
enum SubmissionStatus {
  /// submit
  submit('Submit'),

  /// not submit
  notSubmit('Not Submit');

  const SubmissionStatus(this.title);

  /// title
  final String title;
}

/// customer status for the manager
enum CustomerStatus {
  /// approved
  approved('Approved'),

  /// not approved
  notApproved('Not Approved'),

  /// didn'tLookAt
  didNotLookAt("Didn't Look At");

  const CustomerStatus(this.title);

  /// title
  final String title;
}
