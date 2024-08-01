// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'router.dart';

/// generated route for
/// [AddNoteScreen]
class AddNoteRoute extends PageRouteInfo<void> {
  const AddNoteRoute({List<PageRouteInfo>? children})
      : super(
          AddNoteRoute.name,
          initialChildren: children,
        );

  static const String name = 'AddNoteRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const AddNoteScreen();
    },
  );
}

/// generated route for
/// [EditNoteScreen]
class EditNoteRoute extends PageRouteInfo<EditNoteRouteArgs> {
  EditNoteRoute({
    Key? key,
    required String content,
    required String id,
    List<PageRouteInfo>? children,
  }) : super(
          EditNoteRoute.name,
          args: EditNoteRouteArgs(
            key: key,
            content: content,
            id: id,
          ),
          initialChildren: children,
        );

  static const String name = 'EditNoteRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<EditNoteRouteArgs>();
      return EditNoteScreen(
        key: args.key,
        content: args.content,
        id: args.id,
      );
    },
  );
}

class EditNoteRouteArgs {
  const EditNoteRouteArgs({
    this.key,
    required this.content,
    required this.id,
  });

  final Key? key;

  final String content;

  final String id;

  @override
  String toString() {
    return 'EditNoteRouteArgs{key: $key, content: $content, id: $id}';
  }
}

/// generated route for
/// [NoteScreen]
class NoteRoute extends PageRouteInfo<void> {
  const NoteRoute({List<PageRouteInfo>? children})
      : super(
          NoteRoute.name,
          initialChildren: children,
        );

  static const String name = 'NoteRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const NoteScreen();
    },
  );
}
