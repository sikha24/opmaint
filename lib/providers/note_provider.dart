import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:opmaint_assignment/model/note_model.dart';
import 'package:streaming_shared_preferences/streaming_shared_preferences.dart';

class NoteProvider with ChangeNotifier {
  StreamingSharedPreferences? prefs;

  List<Note> _myNotes = [];

  List<Note> get myNotes => _myNotes;

  // addNote

  Future<void> addNote(Note note) async {
    try {
      _myNotes.add(note);
      await prefs?.setString('my_notes', jsonEncode(_myNotes));
      notifyListeners();
    } catch (r) {
      debugPrint(r.toString());
    }
  }

  //loadNotes

  Future<void> loadNotes() async {
    prefs = await StreamingSharedPreferences.instance;
    final loadNotes =
        prefs?.getString('my_notes', defaultValue: '[]').getValue();

    _myNotes = (jsonDecode(loadNotes!) as List)
        .map((item) => Note.fromJson(item))
        .toList();
    notifyListeners();
  }

// updateNotes
  Future<void> updateNote(Note updatedNote) async {
    prefs = await StreamingSharedPreferences.instance;
    final index = _myNotes.indexWhere((n) => n.id == updatedNote.id);

    _myNotes[index] = updatedNote;

    await prefs?.setString(
        'my_notes', jsonEncode(_myNotes.map((n) => n.toJson()).toList()));
    notifyListeners();
  }

//deleteNotes

  Future<void> deleteNote(String id) async {
    _myNotes.removeWhere((note) => note.id == id);
    await prefs?.setString('my_notes', jsonEncode(_myNotes));
    notifyListeners();
  }
}
