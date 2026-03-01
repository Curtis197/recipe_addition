// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class PayoutsStruct extends FFFirebaseStruct {
  PayoutsStruct({
    String? id,
    String? month,
    String? monthLabel,
    double? amount,
    String? amountFormatted,
    String? status,
    String? statusLabel,
    String? statusColor,
    String? stripeTransferId,
    String? paidDate,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _id = id,
        _month = month,
        _monthLabel = monthLabel,
        _amount = amount,
        _amountFormatted = amountFormatted,
        _status = status,
        _statusLabel = statusLabel,
        _statusColor = statusColor,
        _stripeTransferId = stripeTransferId,
        _paidDate = paidDate,
        super(firestoreUtilData);

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  set id(String? val) => _id = val;

  bool hasId() => _id != null;

  // "month" field.
  String? _month;
  String get month => _month ?? '';
  set month(String? val) => _month = val;

  bool hasMonth() => _month != null;

  // "month_label" field.
  String? _monthLabel;
  String get monthLabel => _monthLabel ?? '';
  set monthLabel(String? val) => _monthLabel = val;

  bool hasMonthLabel() => _monthLabel != null;

  // "amount" field.
  double? _amount;
  double get amount => _amount ?? 0.0;
  set amount(double? val) => _amount = val;

  void incrementAmount(double amount) => amount = amount + amount;

  bool hasAmount() => _amount != null;

  // "amount_formatted" field.
  String? _amountFormatted;
  String get amountFormatted => _amountFormatted ?? '';
  set amountFormatted(String? val) => _amountFormatted = val;

  bool hasAmountFormatted() => _amountFormatted != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  set status(String? val) => _status = val;

  bool hasStatus() => _status != null;

  // "status_label" field.
  String? _statusLabel;
  String get statusLabel => _statusLabel ?? '';
  set statusLabel(String? val) => _statusLabel = val;

  bool hasStatusLabel() => _statusLabel != null;

  // "status_color" field.
  String? _statusColor;
  String get statusColor => _statusColor ?? '';
  set statusColor(String? val) => _statusColor = val;

  bool hasStatusColor() => _statusColor != null;

  // "stripe_transfer_id" field.
  String? _stripeTransferId;
  String get stripeTransferId => _stripeTransferId ?? '';
  set stripeTransferId(String? val) => _stripeTransferId = val;

  bool hasStripeTransferId() => _stripeTransferId != null;

  // "paid_date" field.
  String? _paidDate;
  String get paidDate => _paidDate ?? '';
  set paidDate(String? val) => _paidDate = val;

  bool hasPaidDate() => _paidDate != null;

  static PayoutsStruct fromMap(Map<String, dynamic> data) => PayoutsStruct(
        id: data['id'] as String?,
        month: data['month'] as String?,
        monthLabel: data['month_label'] as String?,
        amount: castToType<double>(data['amount']),
        amountFormatted: data['amount_formatted'] as String?,
        status: data['status'] as String?,
        statusLabel: data['status_label'] as String?,
        statusColor: data['status_color'] as String?,
        stripeTransferId: data['stripe_transfer_id'] as String?,
        paidDate: data['paid_date'] as String?,
      );

  static PayoutsStruct? maybeFromMap(dynamic data) =>
      data is Map ? PayoutsStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'month': _month,
        'month_label': _monthLabel,
        'amount': _amount,
        'amount_formatted': _amountFormatted,
        'status': _status,
        'status_label': _statusLabel,
        'status_color': _statusColor,
        'stripe_transfer_id': _stripeTransferId,
        'paid_date': _paidDate,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.String,
        ),
        'month': serializeParam(
          _month,
          ParamType.String,
        ),
        'month_label': serializeParam(
          _monthLabel,
          ParamType.String,
        ),
        'amount': serializeParam(
          _amount,
          ParamType.double,
        ),
        'amount_formatted': serializeParam(
          _amountFormatted,
          ParamType.String,
        ),
        'status': serializeParam(
          _status,
          ParamType.String,
        ),
        'status_label': serializeParam(
          _statusLabel,
          ParamType.String,
        ),
        'status_color': serializeParam(
          _statusColor,
          ParamType.String,
        ),
        'stripe_transfer_id': serializeParam(
          _stripeTransferId,
          ParamType.String,
        ),
        'paid_date': serializeParam(
          _paidDate,
          ParamType.String,
        ),
      }.withoutNulls;

  static PayoutsStruct fromSerializableMap(Map<String, dynamic> data) =>
      PayoutsStruct(
        id: deserializeParam(
          data['id'],
          ParamType.String,
          false,
        ),
        month: deserializeParam(
          data['month'],
          ParamType.String,
          false,
        ),
        monthLabel: deserializeParam(
          data['month_label'],
          ParamType.String,
          false,
        ),
        amount: deserializeParam(
          data['amount'],
          ParamType.double,
          false,
        ),
        amountFormatted: deserializeParam(
          data['amount_formatted'],
          ParamType.String,
          false,
        ),
        status: deserializeParam(
          data['status'],
          ParamType.String,
          false,
        ),
        statusLabel: deserializeParam(
          data['status_label'],
          ParamType.String,
          false,
        ),
        statusColor: deserializeParam(
          data['status_color'],
          ParamType.String,
          false,
        ),
        stripeTransferId: deserializeParam(
          data['stripe_transfer_id'],
          ParamType.String,
          false,
        ),
        paidDate: deserializeParam(
          data['paid_date'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'PayoutsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is PayoutsStruct &&
        id == other.id &&
        month == other.month &&
        monthLabel == other.monthLabel &&
        amount == other.amount &&
        amountFormatted == other.amountFormatted &&
        status == other.status &&
        statusLabel == other.statusLabel &&
        statusColor == other.statusColor &&
        stripeTransferId == other.stripeTransferId &&
        paidDate == other.paidDate;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        month,
        monthLabel,
        amount,
        amountFormatted,
        status,
        statusLabel,
        statusColor,
        stripeTransferId,
        paidDate
      ]);
}

PayoutsStruct createPayoutsStruct({
  String? id,
  String? month,
  String? monthLabel,
  double? amount,
  String? amountFormatted,
  String? status,
  String? statusLabel,
  String? statusColor,
  String? stripeTransferId,
  String? paidDate,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    PayoutsStruct(
      id: id,
      month: month,
      monthLabel: monthLabel,
      amount: amount,
      amountFormatted: amountFormatted,
      status: status,
      statusLabel: statusLabel,
      statusColor: statusColor,
      stripeTransferId: stripeTransferId,
      paidDate: paidDate,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

PayoutsStruct? updatePayoutsStruct(
  PayoutsStruct? payouts, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    payouts
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addPayoutsStructData(
  Map<String, dynamic> firestoreData,
  PayoutsStruct? payouts,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (payouts == null) {
    return;
  }
  if (payouts.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && payouts.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final payoutsData = getPayoutsFirestoreData(payouts, forFieldValue);
  final nestedData = payoutsData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = payouts.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getPayoutsFirestoreData(
  PayoutsStruct? payouts, [
  bool forFieldValue = false,
]) {
  if (payouts == null) {
    return {};
  }
  final firestoreData = mapToFirestore(payouts.toMap());

  // Add any Firestore field values
  payouts.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getPayoutsListFirestoreData(
  List<PayoutsStruct>? payoutss,
) =>
    payoutss?.map((e) => getPayoutsFirestoreData(e, true)).toList() ?? [];
