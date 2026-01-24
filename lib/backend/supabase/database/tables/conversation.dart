import '../database.dart';

class ConversationTable extends SupabaseTable<ConversationRow> {
  @override
  String get tableName => 'conversation';

  @override
  ConversationRow createRow(Map<String, dynamic> data) => ConversationRow(data);
}

class ConversationRow extends SupabaseDataRow {
  ConversationRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ConversationTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  int? get userId => getField<int>('user_id');
  set userId(int? value) => setField<int>('user_id', value);

  String? get resume => getField<String>('resume');
  set resume(String? value) => setField<String>('resume', value);
}
