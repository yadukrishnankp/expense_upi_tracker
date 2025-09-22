
import 'package:e_tracker_upi/core/style/style_extension.dart';
import 'package:e_tracker_upi/domain/entity/note/note_entity.dart';
import 'package:flutter/material.dart';

import '../../../core/theme/app_colors.dart';

class NoteItem extends StatelessWidget {
  final NoteEntity noteEntity;
  const NoteItem({super.key, required this.noteEntity});

  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 7),
      child: GestureDetector(
        onTap: () {
          // _viewNoteBottomSheet(context);
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
                color: noteEntity.isRemind ? appPrimaryColorLight : appSecondaryColor.withOpacity(0.15),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Icon(
                Icons.notifications_active_rounded,
                color: noteEntity.isRemind ? appPrimaryColor : appSecondaryColor,
                size: 24,
              ),
            ),
            title: Text(
              noteEntity.title,
              style: context.appInterTextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 16,
              ),
            ),
            subtitle: Text(
              noteEntity.description,
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
                 noteEntity.rDate??"",
                  style: context.appInterTextStyle(
                    fontSize: 13,
                    color: appSecondaryColor,
                  ),
                ),
                const SizedBox(height: 4),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(getIcon(), color: getIconColor(), size: 18),
                    const SizedBox(width: 4),
                    Text(
                      noteEntity.priority,
                      style: context.appInterTextStyle(
                        fontSize: 12,
                        color: getIconColor(),
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
  }
   Color getIconColor() {
    switch (noteEntity.priority) {
      case 'High':
       return Colors.red;
      case 'Medium':
        return Colors.orange;
      default:
        return Colors.green;
    }
  }
  IconData getIcon() {
    switch (noteEntity.priority) {
      case 'High':
       return Icons.priority_high;
      case 'Medium':
        return Icons.report_problem;
      default:
        return Icons.low_priority;
    }
  }
}
