import '../database.dart';

class UserHealthParameterTable extends SupabaseTable<UserHealthParameterRow> {
  @override
  String get tableName => 'user_health_parameter';

  @override
  UserHealthParameterRow createRow(Map<String, dynamic> data) =>
      UserHealthParameterRow(data);
}

class UserHealthParameterRow extends SupabaseDataRow {
  UserHealthParameterRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => UserHealthParameterTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  int? get userId => getField<int>('user_id');
  set userId(int? value) => setField<int>('user_id', value);

  int? get userWeight => getField<int>('user_weight');
  set userWeight(int? value) => setField<int>('user_weight', value);

  String? get userGender => getField<String>('user_gender');
  set userGender(String? value) => setField<String>('user_gender', value);

  double? get userAge => getField<double>('user_age');
  set userAge(double? value) => setField<double>('user_age', value);

  double? get userHeight => getField<double>('user_height');
  set userHeight(double? value) => setField<double>('user_height', value);

  double? get userImc => getField<double>('user_imc');
  set userImc(double? value) => setField<double>('user_imc', value);

  String? get activityLevel => getField<String>('activity_level');
  set activityLevel(String? value) => setField<String>('activity_level', value);

  int? get test => getField<int>('test');
  set test(int? value) => setField<int>('test', value);
}
