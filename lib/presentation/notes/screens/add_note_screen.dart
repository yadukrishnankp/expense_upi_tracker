import 'package:e_tracker_upi/core/style/style_extension.dart';
import 'package:e_tracker_upi/core/theme/app_colors.dart';
import 'package:flutter/material.dart';

class AddNoteScreen extends StatefulWidget {
  const AddNoteScreen({super.key});

  @override
  State<AddNoteScreen> createState() => _AddNoteScreenState();
}

class _AddNoteScreenState extends State<AddNoteScreen> {
  final _titleController = TextEditingController();
  final _descController = TextEditingController();
  String _priority = 'High';
  bool _reminder = false;
  DateTime? _reminderDateTime;

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
    setState(() {
      _reminderDateTime = DateTime(
        date.year,
        date.month,
        date.day,
        time.hour,
        time.minute,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                Checkbox(
                  value: _reminder,
                  activeColor: appPrimaryColor,
                  onChanged: (val) {
                    setState(() {
                      _reminder = val ?? false;
                      if (!_reminder) _reminderDateTime = null;
                    });
                  },
                ),
                Text(
                  "Add Reminder",
                  style: context.appInterTextStyle(fontWeight: FontWeight.w500),
                ),
              ],
            ),
            if (_reminder) ...[
              GestureDetector(
                onTap: _pickDateTime,
                child: AbsorbPointer(
                  child: TextFormField(
                    style: context.appInterTextStyle(),
                    decoration: InputDecoration(
                      hintText: "Select date & time",
                      border: context.appInputBorder(),
                      enabledBorder: context.appInputBorder(),
                      focusedBorder: context.appInputBorder(),
                      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                      suffixIcon: Icon(Icons.calendar_today, color: appPrimaryColor),
                    ),
                    controller: TextEditingController(
                      text: _reminderDateTime != null
                          ? "${_reminderDateTime!.toLocal()}".split('.').first
                          : "",
                    ),
                    enabled: false,
                  ),
                ),
              ),
            ],
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
                  // Submit note logic
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
    );
  }

  Widget _buildPriorityRadio(String value, Color color) {
    return Row(
      children: [
        Radio<String>(
          value: value,
          groupValue: _priority,
          activeColor: color,
          onChanged: (val) {
            setState(() {
              _priority = val!;
            });
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
    );
  }
}
