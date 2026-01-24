import '../database.dart';

class WeightProgressTable extends SupabaseTable<WeightProgressRow> {
  @override
  String get tableName => 'weight_progress';

  @override
  WeightProgressRow createRow(Map<String, dynamic> data) =>
      WeightProgressRow(data);
}

class WeightProgressRow extends SupabaseDataRow {
  WeightProgressRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => WeightProgressTable();

  int? get userId => getField<int>('user_id');
  set userId(int? value) => setField<int>('user_id', value);

  DateTime? get date => getField<DateTime>('date');
  set date(DateTime? value) => setField<DateTime>('date', value);

  int? get initialWeight => getField<int>('initial_weight');
  set initialWeight(int? value) => setField<int>('initial_weight', value);

  int? get updatedWeight => getField<int>('updated_weight');
  set updatedWeight(int? value) => setField<int>('updated_weight', value);

  double? get targetWeight => getField<double>('target_weight');
  set targetWeight(double? value) => setField<double>('target_weight', value);

  double? get weightLeft => getField<double>('weight_left');
  set weightLeft(double? value) => setField<double>('weight_left', value);

  double? get weightLossGoal => getField<double>('weight_loss_goal');
  set weightLossGoal(double? value) =>
      setField<double>('weight_loss_goal', value);

  int? get weightLoss => getField<int>('weight_loss');
  set weightLoss(int? value) => setField<int>('weight_loss', value);

  double? get weightLossReach => getField<double>('weight_loss_reach');
  set weightLossReach(double? value) =>
      setField<double>('weight_loss_reach', value);

  double? get weightLossPercentage =>
      getField<double>('weight_loss_percentage');
  set weightLossPercentage(double? value) =>
      setField<double>('weight_loss_percentage', value);
}
