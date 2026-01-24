import '../database.dart';

class CreatorTable extends SupabaseTable<CreatorRow> {
  @override
  String get tableName => 'creator';

  @override
  CreatorRow createRow(Map<String, dynamic> data) => CreatorRow(data);
}

class CreatorRow extends SupabaseDataRow {
  CreatorRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => CreatorTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);

  int? get userId => getField<int>('user_id');
  set userId(int? value) => setField<int>('user_id', value);

  String? get authId => getField<String>('auth_id');
  set authId(String? value) => setField<String>('auth_id', value);

  String? get supabaseAuthId => getField<String>('supabase_auth_id');
  set supabaseAuthId(String? value) =>
      setField<String>('supabase_auth_id', value);

  String? get name => getField<String>('name');
  set name(String? value) => setField<String>('name', value);

  String? get foodRegion => getField<String>('Food Region');
  set foodRegion(String? value) => setField<String>('Food Region', value);

  String? get profilUrl => getField<String>('profil_url');
  set profilUrl(String? value) => setField<String>('profil_url', value);
}
