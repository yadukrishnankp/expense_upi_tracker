import 'package:e_tracker_upi/core/style/style_extension.dart';
import 'package:e_tracker_upi/core/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../core/router/app_router.dart';
import '../widgets/note_view_bottom_sheet.dart';

class NotesScreen extends StatefulWidget {
  const NotesScreen({super.key});

  @override
  State<NotesScreen> createState() => _NotesScreenState();
}

class _NotesScreenState extends State<NotesScreen> {

  void _viewNoteBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isDismissible: true,
      enableDrag: true,
      useRootNavigator: true,
      // isScrollControlled: true,
      backgroundColor: Colors.transparent, // to allow rounded corners
      builder: (_) => NoteViewBottomSheet(
        title: "Note Title",
        description: "This is a detailed description of the note. It can contain more information about the note, including any relevant details or context that the user might need to know.",
        priority: "High",
        hasReminder: true,
        reminderDateTime: "2024-07-01 10:00 AM",
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        surfaceTintColor: Colors.transparent,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        title: Text(
          'Notes',
          style: context.appInterTextStyle(),
        ),
        centerTitle: true,
        elevation: 0,
        actions: [
          IconButton(
            icon: Icon(Icons.add, color: Theme.of(context).colorScheme.onSurface),
            onPressed: () {
              context.pushNamed(AppRoute.add_note.name);
              // Add new note action
            },
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: 10,
        padding: const EdgeInsets.symmetric(vertical: 12),
        itemBuilder: (context, index) {
          final isEnabled = index % 2 == 0;
          // Example priority assignment for demo
          final priorities = ['High', 'Medium', 'Low'];
          final priority = priorities[index % 3];
          Color priorityColor;
          IconData priorityIcon;
          switch (priority) {
            case 'High':
              priorityColor = Colors.red;
              priorityIcon = Icons.priority_high;
              break;
            case 'Medium':
              priorityColor = Colors.orange;
              priorityIcon = Icons.report_problem;
              break;
            default:
              priorityColor = Colors.green;
              priorityIcon = Icons.low_priority;
          }
          // Example notification date
          final notificationDate = "2024-07-01 10:0${index} AM";
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 7),
            child: GestureDetector(
              onTap: () {
                _viewNoteBottomSheet(context);
              },
              child: Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Color(0xffFCFCFC),
                  borderRadius: BorderRadius.circular(14),
                ),
                child: ListTile(
                  leading: Container(
                    width: 44,
                    height: 44,
                    decoration: BoxDecoration(
                      color: isEnabled ? appPrimaryColorLight : appSecondaryColor.withOpacity(0.15),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Icon(
                      Icons.notifications_active_rounded,
                      color: isEnabled ? appPrimaryColor : appSecondaryColor,
                      size: 24,
                    ),
                  ),
                  title: Text(
                    "Note Title ${index + 1}",
                    style: context.appInterTextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                    ),
                  ),
                  subtitle: Text(
                    "This is a subtitle for note ${index + 1}",
                    style: context.appInterTextStyle(
                      fontSize: 13,
                      color: appSecondaryColor,
                    ),
                  ),
                  trailing: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        "12:0${index} PM",
                        style: context.appInterTextStyle(
                          fontSize: 13,
                          color: appSecondaryColor,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(priorityIcon, color: priorityColor, size: 18),
                          const SizedBox(width: 4),
                          Text(
                            priority,
                            style: context.appInterTextStyle(
                              fontSize: 12,
                              color: priorityColor,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
