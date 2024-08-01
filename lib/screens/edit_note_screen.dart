import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:opmaint_assignment/core/utils/constants/colors.dart';
import 'package:opmaint_assignment/model/note_model.dart';
import 'package:opmaint_assignment/providers/note_provider.dart';

import 'package:responsive_sizer/responsive_sizer.dart';

@RoutePage()
class EditNoteScreen extends StatefulWidget {
  final String content;
  final String id;
  const EditNoteScreen({super.key, required this.content, required this.id});

  @override
  State<EditNoteScreen> createState() => _EditNoteScreenState();
}

class _EditNoteScreenState extends State<EditNoteScreen> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).textTheme;

    final notesProvider = GetIt.I<NoteProvider>();
    final contentController = TextEditingController(text: widget.content);

    return Scaffold(
      appBar: AppBar(),
      body: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              SizedBox(
                height: 3.h,
              ),
              SizedBox(
                child: TextFormField(
                  maxLines: 12,
                  controller: contentController,
                  cursorColor: AppColors.lightOrange,
                  style: theme.labelLarge?.copyWith(color: AppColors.offWhite),
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please Add a note';
                    }
                    return null;
                  },
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
          backgroundColor: AppColors.lightOrange,
          label: Text(
            'Update',
            style: theme.displaySmall?.copyWith(color: AppColors.lightGrey),
          ),
          onPressed: () async {
            final note = Note(content: contentController.text, id: widget.id);
            if (_formKey.currentState!.validate()) {
              await notesProvider.updateNote(note);
              // ignore: use_build_context_synchronously
              Navigator.pop(context);
            }
          }),
    );
  }
}
