import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:opmaint_assignment/core/utils/constants/colors.dart';
import 'package:opmaint_assignment/model/note_model.dart';

import 'package:responsive_sizer/responsive_sizer.dart';

import '../providers/note_provider.dart';

@RoutePage()
class AddNoteScreen extends StatefulWidget {
  const AddNoteScreen({super.key});

  @override
  State<AddNoteScreen> createState() => _AddNoteScreenState();
}

class _AddNoteScreenState extends State<AddNoteScreen> {
  final contentController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).textTheme;
    NoteProvider notesProvider = GetIt.I<NoteProvider>();

    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            SizedBox(
              height: 3.h,
            ),
            SizedBox(
              child: Form(
                key: _formKey,
                child: TextFormField(
                  maxLines: 10,
                  controller: contentController,
                  cursorColor: AppColors.lightOrange,
                  style: theme.labelLarge?.copyWith(color: AppColors.offWhite),
                  decoration: InputDecoration(
                    hintText: 'Add a note ....',
                    border: InputBorder.none,
                    hintStyle: theme.displaySmall
                        ?.copyWith(color: AppColors.lightGrey),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please Add a Note';
                    }
                    return null;
                  },
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
          backgroundColor: AppColors.lightOrange,
          label: Text(
            'Add',
            style: theme.displaySmall?.copyWith(color: AppColors.lightGrey),
          ),
          onPressed: () async {
            final note = Note(
                content: contentController.text, id: DateTime.now().toString());
            if (_formKey.currentState!.validate()) {
              await notesProvider.addNote(note);
              // ignore: use_build_context_synchronously
              Navigator.pop(context);
            }
          }),
    );
  }
}
