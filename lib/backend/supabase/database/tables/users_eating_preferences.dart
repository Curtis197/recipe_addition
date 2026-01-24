import '../database.dart';

class UsersEatingPreferencesTable
    extends SupabaseTable<UsersEatingPreferencesRow> {
  @override
  String get tableName => 'users_eating_preferences';

  @override
  UsersEatingPreferencesRow createRow(Map<String, dynamic> data) =>
      UsersEatingPreferencesRow(data);
}

class UsersEatingPreferencesRow extends SupabaseDataRow {
  UsersEatingPreferencesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => UsersEatingPreferencesTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);
}
