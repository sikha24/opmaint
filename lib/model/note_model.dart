// This file is "main.dart"
import 'package:freezed_annotation/freezed_annotation.dart';

part 'note_model.freezed.dart';

part 'note_model.g.dart';

@freezed
class Note with _$Note {
  const factory Note({
    required String content,
    required int id,
  }) = _Note;

  factory Note.fromJson(Map<String, Object?> json) => _$NoteFromJson(json);
}
