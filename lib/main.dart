import 'package:flutter/material.dart';

import 'package:opmaint_assignment/core/theme/theme.dart';
import 'package:opmaint_assignment/providers/note_provider.dart';

import 'package:opmaint_assignment/services/routing/router.dart';
import 'package:opmaint_assignment/services/service_locator.dart';
import 'package:provider/provider.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(builder: (p0, p1, p2) {
      return MultiProvider(
          providers: [
            ChangeNotifierProvider(
              create: (context) => getIt<NoteProvider>(),
            )
          ],
          child: MaterialApp.router(
            debugShowCheckedModeBanner: false,
            title: 'Flutter Demo',
            theme: ApplicationTheme.lightTheme,
            routerConfig: _appRouter.config(),
          ));
    });
  }
}
