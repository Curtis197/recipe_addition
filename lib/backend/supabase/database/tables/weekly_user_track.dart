import '../database.dart';

class WeeklyUserTrackTable extends SupabaseTable<WeeklyUserTrackRow> {
  @override
  String get tableName => 'weekly_user_track';

  @override
  WeeklyUserTrackRow createRow(Map<String, dynamic> data) =>
      WeeklyUserTrackRow(data);
}

class WeeklyUserTrackRow extends SupabaseDataRow {
  WeeklyUserTrackRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => WeeklyUserTrackTable();

  int? get userId => getField<int>('user_id');
  set userId(int? value) => setField<int>('user_id', value);

  int? get mealPlanId => getField<int>('meal_plan_id');
  set mealPlanId(int? value) => setField<int>('meal_plan_id', value);

  DateTime? get startDate => getField<DateTime>('start_date');
  set startDate(DateTime? value) => setField<DateTime>('start_date', value);

  DateTime? get endDate => getField<DateTime>('end_date');
  set endDate(DateTime? value) => setField<DateTime>('end_date', value);

  double? get targetCalorie => getField<double>('target_calorie');
  set targetCalorie(double? value) => setField<double>('target_calorie', value);

  double? get consumedCalories => getField<double>('consumed_calories');
  set consumedCalories(double? value) =>
      setField<double>('consumed_calories', value);

  double? get consumedCarb => getField<double>('consumed_carb');
  set consumedCarb(double? value) => setField<double>('consumed_carb', value);

  double? get consumedFat => getField<double>('consumed_fat');
  set consumedFat(double? value) => setField<double>('consumed_fat', value);

  double? get consumedProtein => getField<double>('consumed_protein');
  set consumedProtein(double? value) =>
      setField<double>('consumed_protein', value);

  double? get caloriePercent => getField<double>('calorie_percent');
  set caloriePercent(double? value) =>
      setField<double>('calorie_percent', value);
}
