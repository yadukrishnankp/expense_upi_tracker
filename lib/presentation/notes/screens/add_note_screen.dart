import 'package:e_tracker_upi/core/style/style_extension.dart';
import 'package:e_tracker_upi/core/theme/app_colors.dart';
import 'package:e_tracker_upi/core/utils/app_date_time_utils.dart';
import 'package:e_tracker_upi/presentation/notes/bloc/add_note_bloc.dart';
import 'package:e_tracker_upi/presentation/notes/bloc/note_bloc.dart';
import 'package:e_tracker_upi/presentation/notes/event/add_note_event.dart';
import 'package:e_tracker_upi/presentation/notes/event/note_event.dart';
import 'package:e_tracker_upi/presentation/notes/state/add_note_state.dart';
import 'package:e_tracker_upi/shared/widget/app_toast.dart';
import 'package:e_tracker_upi/shared/widget/loading_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../core/injection_container.dart';

class AddNoteScreen extends StatefulWidget {
  const AddNoteScreen({super.key});

  @override
  State<AddNoteScreen> createState() => _AddNoteScreenState();
}

class _AddNoteScreenState extends State<AddNoteScreen> {
  final _titleController = TextEditingController();
  final _descController = TextEditingController();
  final _dateController = TextEditingController();
  DateTime? _reminderDateTime;
  late AddNoteBloc addNoteBloc;
 late NoteBloc noteBloc;

  @override
  void initState() {
    // TODO: implement initState
    addNoteBloc = context.read<AddNoteBloc>();
    noteBloc = sl.get<NoteBloc>();
    super.initState();
  }

  Future<void> _pickDateTime() async {
    final date = await showDatePicker(
      context: context,
      initialDate: _reminderDateTime ?? DateTime.now(),
      firstDate: DateTime.now(),
      lastDate: DateTime(2100),
    );
    if (date == null) return;
    final time = await showTimePicker(
      context: context,
      initialTime: _reminderDateTime != null
          ? TimeOfDay.fromDateTime(_reminderDateTime!)
          : TimeOfDay.now(),
    );
    if (time == null) return;
      _reminderDateTime = DateTime(
        date.year,
        date.month,
        date.day,
        time.hour,
        time.minute,
      );
      context.read<AddNoteBloc>().add(AddNoteEvent.onRemindDateChange(_reminderDateTime!));
      _dateController.text = AppDateTimeUtils.formatFull(_reminderDateTime!);

  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<AddNoteBloc,AddNoteState>(listener: (context, state) {
      if(state is AddNoteStateInitial){
        LoadingDialog.close(context);
      }
      else if(state is AddNoteStateLoading){
        LoadingDialog.show(context);
      }
      else if(state is AddNoteStateSuccess){
        LoadingDialog.close(context);
        if(state.message  != null){
          AppToast.showErrorToast(state.message??"", context);
        }
        noteBloc.add(NoteEvent.getNote());
        context.pop();
      }
      else if(state is AddNoteStateFailure){
        LoadingDialog.close(context);
        if(state.message.isNotEmpty){
          AppToast.showErrorToast(state.message, context);
        }
      }
    },child: Scaffold(
      appBar: AppBar(
        surfaceTintColor: Colors.transparent,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        title: Text(
          "Add Note",
          style: context.appInterTextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 18,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Note Title", style: context.appInterTextStyle(fontWeight: FontWeight.w500)),
            const SizedBox(height: 8),
            TextFormField(
              controller: _titleController,
              style: context.appInterTextStyle(),
              onChanged: (value) {
                if(value.isNotEmpty){
                  context.read<AddNoteBloc>().add(AddNoteEvent.onTitleChange(value));
                }
              },
              decoration: InputDecoration(
                hintText: "Enter note title",
                border: context.appInputBorder(),
                enabledBorder: context.appInputBorder(),
                focusedBorder: context.appInputBorder(),
                contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              ),
            ),
            const SizedBox(height: 18),
            Text("Description", style: context.appInterTextStyle(fontWeight: FontWeight.w500)),
            const SizedBox(height: 8),
            TextFormField(
              controller: _descController,
              style: context.appInterTextStyle(),
              onChanged: (value) {
                if(value.isNotEmpty){
                  context.read<AddNoteBloc>().add(AddNoteEvent.onDescriptionChange(value));
                }
              },
              maxLines: 4,
              decoration: InputDecoration(
                hintText: "Enter description",
                border: context.appInputBorder(),
                enabledBorder: context.appInputBorder(),
                focusedBorder: context.appInputBorder(),
                contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              ),
            ),
            const SizedBox(height: 18),
            Text("Priority", style: context.appInterTextStyle(fontWeight: FontWeight.w500)),
            const SizedBox(height: 8),
            Row(
              children: [
                _buildPriorityRadio("High", Colors.red),
                const SizedBox(width: 12),
                _buildPriorityRadio("Medium", Colors.orange),
                const SizedBox(width: 12),
                _buildPriorityRadio("Low", Colors.green),
              ],
            ),
            const SizedBox(height: 18),
            Row(
              children: [
                BlocBuilder<AddNoteBloc,AddNoteState>(builder: (context, state) =>  Checkbox(
                  value: state.noteData.isRemind,
                  activeColor: appPrimaryColor,
                  onChanged: (val) {
                    context.read<AddNoteBloc>().add(AddNoteEvent.onRemindToggle(val!));
                  },
                ),),
                Text(
                  "Add Reminder",
                  style: context.appInterTextStyle(fontWeight: FontWeight.w500),
                ),
              ],
            ),
            BlocBuilder<AddNoteBloc,AddNoteState>(builder: (context, state) {
              if(state.noteData.isRemind== true){
                return  GestureDetector(
                  onTap: _pickDateTime,
                  child: AbsorbPointer(
                    child: TextFormField(
                      style: context.appInterTextStyle(),
                      onTap: _pickDateTime,
                      decoration: InputDecoration(
                        hintText: "Select date & time",
                        border: context.appInputBorder(),
                        enabledBorder: context.appInputBorder(),
                        focusedBorder: context.appInputBorder(),
                        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                        suffixIcon: Icon(Icons.calendar_today, color: appPrimaryColor),
                      ),
                      controller: _dateController,
                      enabled: false,
                    ),
                  ),
                );
              }
              return SizedBox();
            },),
            const SizedBox(height: 28),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: appPrimaryColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(14),
                  ),
                  padding: const EdgeInsets.symmetric(vertical: 16),
                ),
                onPressed: () {
                  context.read<AddNoteBloc>().add(AddNoteEvent.onNoteAddEvent());
                },
                child: Text(
                  "Add Note",
                  style: context.appInterTextStyle(
                    color: appLightColor,
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    ),);
  }

  Widget _buildPriorityRadio(String value, Color color) {
    return BlocBuilder<AddNoteBloc,AddNoteState>(builder: (context, state) => Row(
      children: [
        Radio<String>(
          value: value,
          groupValue: state.noteData.priority,
          activeColor: color,
          onChanged: (val) {
            context.read<AddNoteBloc>().add(AddNoteEvent.onPriorityChange(val!));
          },
        ),
        Text(
          value,
          style: context.appInterTextStyle(
            color: color,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    ),);
  }
}
