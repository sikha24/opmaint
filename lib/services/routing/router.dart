import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import 'package:opmaint_assignment/screens/add_note_screen.dart';
import 'package:opmaint_assignment/screens/edit_note_screen.dart';
import 'package:opmaint_assignment/screens/note_screen.dart';

part 'router.gr.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: NoteRoute.page, initial: true),
        AutoRoute(page: AddNoteRoute.page),
        AutoRoute(
          page: EditNoteRoute.page,
          path: '/edit',
        )
      ];
}
