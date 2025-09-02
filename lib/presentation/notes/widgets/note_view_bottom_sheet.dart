import 'package:e_tracker_upi/core/style/style_extension.dart';
import 'package:e_tracker_upi/core/theme/app_colors.dart';
import 'package:flutter/material.dart';

class NoteViewBottomSheet extends StatelessWidget {
  final String title;
  final String description;
  final String priority;
  final bool hasReminder;
  final String? reminderDateTime;
  final String? createdDateTime;

  const NoteViewBottomSheet({
    super.key,
    required this.title,
    required this.description,
    required this.priority,
    this.hasReminder = false,
    this.reminderDateTime,
    this.createdDateTime,
  });

  @override
  Widget build(BuildContext context) {
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

    // Provide a default value for createdDateTime if null
    final String displayCreatedDateTime = createdDateTime ??
        "${DateTime.now().year}-${DateTime.now().month.toString().padLeft(2, '0')}-${DateTime.now().day.toString().padLeft(2, '0')} ${DateTime.now().hour.toString().padLeft(2, '0')}:${DateTime.now().minute.toString().padLeft(2, '0')}";

    return DraggableScrollableSheet(
      initialChildSize: 0.9,
      maxChildSize: 0.9,
      minChildSize: 0.5,
      builder: (context, scrollController) {
        return Container(
          decoration: BoxDecoration(
            color: Theme.of(context).scaffoldBackgroundColor,
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(16),
              topRight: Radius.circular(16),
            ),
          ),
          child: Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  controller: scrollController,
                  child: Padding(
                    padding: const EdgeInsets.all(14.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Center(
                          child: Container(
                            width: 40,
                            height: 5,
                            margin: const EdgeInsets.only(bottom: 16),
                            decoration: BoxDecoration(
                              color: Colors.grey[400],
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                        Center(
                          child: Text(
                            'Note Details',
                            style: context.appInterTextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 22,
                            ),
                          ),
                        ),
                        const SizedBox(height: 24),
                        Text(
                          title,
                          style: context.appInterTextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 20,
                          ),
                        ),
                        if (hasReminder && reminderDateTime != null) ...[
                          const SizedBox(height: 16),
                          Container(
                            decoration: context.capsuleTextViewFilledShape(appPrimaryColorLight),
                            padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 6),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Icon(
                                  Icons.notifications_active_rounded,
                                  color: appPrimaryColor,
                                  size: 18,
                                ),
                                const SizedBox(width: 8),
                                Text(
                                  reminderDateTime!,
                                  style: context.appInterTextStyle(
                                    color: appPrimaryColor,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 14,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                        const SizedBox(height: 24),
                        Container(
                          decoration: context.capsuleTextViewFilledShape(priorityColor.withOpacity(0.15)),
                          padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 6),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Icon(priorityIcon, color: priorityColor, size: 18),
                              const SizedBox(width: 4),
                              Text(
                                priority,
                                style: context.appInterTextStyle(
                                  color: priorityColor,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 10),
                        Text(
                          description,
                          style: context.appInterTextStyle(
                            fontSize: 15,
                            color: appSecondaryColor,
                          ),
                        ),
                        const SizedBox(height: 16),
                        Row(
                          children: [
                            Icon(Icons.calendar_today, size: 16, color: appSecondaryColor),
                            const SizedBox(width: 6),
                            Text(
                              displayCreatedDateTime,
                              style: context.appInterTextStyle(
                                color: appSecondaryColor,
                                fontSize: 13,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 24),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
                child: Row(
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        style: context.appPrimaryButtonStyle(),
                        onPressed: () {
                          // Edit action
                        },
                        child: Text(
                          "Edit",
                          style: context.appInterTextStyle(
                            color: appLightColor,
                            fontWeight: FontWeight.w600,
                            fontSize: 17,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      child: ElevatedButton(
                        style: context.appPrimaryButtonStyle().copyWith(
                          backgroundColor: MaterialStateProperty.all(appSecondaryColor),
                        ),
                        onPressed: () {
                          // Delete action
                        },
                        child: Text(
                          "Delete",
                          style: context.appInterTextStyle(
                            color: appLightColor,
                            fontWeight: FontWeight.w600,
                            fontSize: 17,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),
            ],
          ),
        );
      },
    );
  }
}
