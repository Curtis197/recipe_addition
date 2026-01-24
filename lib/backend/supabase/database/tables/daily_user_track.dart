import '../database.dart';

class DailyUserTrackTable extends SupabaseTable<DailyUserTrackRow> {
  @override
  String get tableName => 'daily_user_track';

  @override
  DailyUserTrackRow createRow(Map<String, dynamic> data) =>
      DailyUserTrackRow(data);
}

class DailyUserTrackRow extends SupabaseDataRow {
  DailyUserTrackRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => DailyUserTrackTable();

  int? get id => getField<int>('id');
  set id(int? value) => setField<int>('id', value);

  DateTime? get date => getField<DateTime>('date');
  set date(DateTime? value) => setField<DateTime>('date', value);

  double? get targetCalorie => getField<double>('target_calorie');
  set targetCalorie(double? value) => setField<double>('target_calorie', value);

  int? get mealPlanned => getField<int>('meal_planned');
  set mealPlanned(int? value) => setField<int>('meal_planned', value);

  int? get mealConsumed => getField<int>('meal_consumed');
  set mealConsumed(int? value) => setField<int>('meal_consumed', value);

  double? get consumedCalories => getField<double>('consumed_calories');
  set consumedCalories(double? value) =>
      setField<double>('consumed_calories', value);

  double? get consumedCarbs => getField<double>('consumed_carbs');
  set consumedCarbs(double? value) => setField<double>('consumed_carbs', value);

  double? get consumedFat => getField<double>('consumed_fat');
  set consumedFat(double? value) => setField<double>('consumed_fat', value);

  double? get consumedProtein => getField<double>('consumed_protein');
  set consumedProtein(double? value) =>
      setField<double>('consumed_protein', value);

  double? get caloriePercent => getField<double>('calorie_percent');
  set caloriePercent(double? value) =>
      setField<double>('calorie_percent', value);

  bool? get allMealConsumed => getField<bool>('all_meal_consumed');
  set allMealConsumed(bool? value) =>
      setField<bool>('all_meal_consumed', value);
}
