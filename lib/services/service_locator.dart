import 'package:get_it/get_it.dart';
import 'package:opmaint_assignment/providers/note_provider.dart';

final GetIt getIt = GetIt.instance;

void setupLocator() {
  getIt.registerLazySingleton<NoteProvider>(() => NoteProvider());
}
