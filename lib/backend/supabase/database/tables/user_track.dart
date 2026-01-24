import '../database.dart';

class UserTrackTable extends SupabaseTable<UserTrackRow> {
  @override
  String get tableName => 'user_track';

  @override
  UserTrackRow createRow(Map<String, dynamic> data) => UserTrackRow(data);
}

class UserTrackRow extends SupabaseDataRow {
  UserTrackRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => UserTrackTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  int? get userId => getField<int>('user_id');
  set userId(int? value) => setField<int>('user_id', value);

  DateTime? get trackDate => getField<DateTime>('track_date');
  set trackDate(DateTime? value) => setField<DateTime>('track_date', value);

  double? get totalProteins => getField<double>('total_proteins');
  set totalProteins(double? value) => setField<double>('total_proteins', value);

  double? get totalCarbs => getField<double>('total_carbs');
  set totalCarbs(double? value) => setField<double>('total_carbs', value);

  double? get totalFat => getField<double>('total_fat');
  set totalFat(double? value) => setField<double>('total_fat', value);

  double? get totalCalories => getField<double>('total_calories');
  set totalCalories(double? value) => setField<double>('total_calories', value);

  double? get calorieLeft => getField<double>('calorie_left');
  set calorieLeft(double? value) => setField<double>('calorie_left', value);

  double get mealConsumed => getField<double>('meal_consumed')!;
  set mealConsumed(double value) => setField<double>('meal_consumed', value);

  bool? get allMealConsumed => getField<bool>('all_meal_consumed');
  set allMealConsumed(bool? value) =>
      setField<bool>('all_meal_consumed', value);
}
