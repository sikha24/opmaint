import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import 'package:opmaint_assignment/core/utils/constants/colors.dart';
import 'package:opmaint_assignment/providers/note_provider.dart';
import 'package:opmaint_assignment/services/routing/router.dart';

import 'package:provider/provider.dart';

@RoutePage()
class NoteScreen extends StatefulWidget {
  const NoteScreen({super.key});

  @override
  State<NoteScreen> createState() => _NoteScreenState();
}

class _NoteScreenState extends State<NoteScreen> {
  @override
  void initState() {
    super.initState();
    Provider.of<NoteProvider>(context, listen: false).loadNotes();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).textTheme;
    final router = AutoRouter.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Notes App',
            style: theme.displayMedium?.copyWith(color: AppColors.txtLabel)),
      ),
      body: Consumer<NoteProvider>(
        builder: (context, value, child) {
          return value.myNotes.isNotEmpty
              ? ListView.builder(
                  itemCount: value.myNotes.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: ListTile(
                        onTap: () {
                          router.push(EditNoteRoute(
                              content: value.myNotes[index].content,
                              id: value.myNotes[index].id));
                        },
                        trailing: InkWell(
                          onTap: () {
                            value.deleteNote(value.myNotes[index].id);
                            value.loadNotes();
                          },
                          child: Icon(
                            Icons.delete,
                            color: AppColors.lightGrey,
                          ),
                        ),
                        tileColor: AppColors.lightOrange,
                        title: Text(value.myNotes[index].content,
                            style: theme.labelMedium
                                ?.copyWith(color: AppColors.offWhite)),
                      ),
                    );
                  })
              : Center(
                  child: Text('No Note Added Yet',
                      style: theme.labelMedium
                          ?.copyWith(color: AppColors.offWhite)),
                );
        },
      ),
      floatingActionButton: FloatingActionButton(
          backgroundColor: AppColors.lightOrange,
          child: Icon(
            Icons.add,
            color: AppColors.lightGrey,
          ),
          onPressed: () {
            router.push(const AddNoteRoute());
          }),
    );
  }
}
