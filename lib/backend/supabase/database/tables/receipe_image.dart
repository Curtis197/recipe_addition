import '../database.dart';

class ReceipeImageTable extends SupabaseTable<ReceipeImageRow> {
  @override
  String get tableName => 'receipe_image';

  @override
  ReceipeImageRow createRow(Map<String, dynamic> data) => ReceipeImageRow(data);
}

class ReceipeImageRow extends SupabaseDataRow {
  ReceipeImageRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ReceipeImageTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String? get url => getField<String>('url');
  set url(String? value) => setField<String>('url', value);

  int? get receipeId => getField<int>('receipe_id');
  set receipeId(int? value) => setField<int>('receipe_id', value);

  String? get type => getField<String>('type');
  set type(String? value) => setField<String>('type', value);

  double? get index => getField<double>('index');
  set index(double? value) => setField<double>('index', value);

  int? get temporaryReceipeId => getField<int>('temporary_receipe_id');
  set temporaryReceipeId(int? value) =>
      setField<int>('temporary_receipe_id', value);
}
