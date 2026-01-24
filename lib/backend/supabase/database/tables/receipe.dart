import '../database.dart';

class ReceipeTable extends SupabaseTable<ReceipeRow> {
  @override
  String get tableName => 'receipe';

  @override
  ReceipeRow createRow(Map<String, dynamic> data) => ReceipeRow(data);
}

class ReceipeRow extends SupabaseDataRow {
  ReceipeRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ReceipeTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get name => getField<String>('name');
  set name(String? value) => setField<String>('name', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);

  int? get tasteRate => getField<int>('taste_rate');
  set tasteRate(int? value) => setField<int>('taste_rate', value);

  int? get timeOfCookingMin => getField<int>('time_of_cooking_min');
  set timeOfCookingMin(int? value) =>
      setField<int>('time_of_cooking_min', value);

  int? get difficultyRate => getField<int>('difficulty_rate');
  set difficultyRate(int? value) => setField<int>('difficulty_rate', value);

  int? get sasietyRate => getField<int>('sasiety_rate');
  set sasietyRate(int? value) => setField<int>('sasiety_rate', value);

  int? get calorie => getField<int>('calorie');
  set calorie(int? value) => setField<int>('calorie', value);

  double? get totalRate => getField<double>('total_rate');
  set totalRate(double? value) => setField<double>('total_rate', value);

  bool? get sansPorc => getField<bool>('sans porc');
  set sansPorc(bool? value) => setField<bool>('sans porc', value);

  List<String> get type => getListField<String>('type');
  set type(List<String>? value) => setListField<String>('type', value);

  String? get creatorId => getField<String>('creator_id');
  set creatorId(String? value) => setField<String>('creator_id', value);

  String? get foodRegion => getField<String>('Food Region');
  set foodRegion(String? value) => setField<String>('Food Region', value);

  int? get timeOfCookingHour => getField<int>('time_of_cooking_hour');
  set timeOfCookingHour(int? value) =>
      setField<int>('time_of_cooking_hour', value);

  String? get difficulty => getField<String>('difficulty');
  set difficulty(String? value) => setField<String>('difficulty', value);

  int? get commentCount => getField<int>('comment_count');
  set commentCount(int? value) => setField<int>('comment_count', value);

  int? get likeCount => getField<int>('like_count');
  set likeCount(int? value) => setField<int>('like_count', value);

  int? get mealConsumed => getField<int>('meal_consumed');
  set mealConsumed(int? value) => setField<int>('meal_consumed', value);
}
