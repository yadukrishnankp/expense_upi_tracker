import 'package:e_tracker_upi/core/network/state/firestore_fetch_state.dart';
import 'package:e_tracker_upi/core/style/style_extension.dart';
import 'package:e_tracker_upi/core/theme/app_colors.dart';
import 'package:e_tracker_upi/domain/entity/note/note_entity.dart';
import 'package:e_tracker_upi/presentation/notes/bloc/note_bloc.dart';
import 'package:e_tracker_upi/presentation/notes/event/note_event.dart';
import 'package:e_tracker_upi/presentation/notes/state/note_state.dart';
import 'package:e_tracker_upi/presentation/notes/widgets/note_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:skeletonizer/skeletonizer.dart';

import '../../../core/router/app_router.dart';
import '../widgets/note_view_bottom_sheet.dart';

class NotesScreen extends StatefulWidget {
  const NotesScreen({super.key});

  @override
  State<NotesScreen> createState() => _NotesScreenState();
}

class _NotesScreenState extends State<NotesScreen> {




  @override
  void initState() {
    // TODO: implement initState
    context.read<NoteBloc>().add(NoteEvent.getNote());

    super.initState();
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
      body: BlocBuilder<NoteBloc,NoteState>(builder: (context, state) {
        final fakeList = List.filled(5, NoteEntity(
          userId: "",
          id: "",
          title: "Hey",
          description: "hello eliot",
          priority: "High",
          isRemind: true, createdTime: DateTime.now(), date: '', time: ''
        ));
        return  state.noteList.when(initial: () {
         return  _noteList(fakeList, true);
         }, loading: () =>_noteList(fakeList, true) , success: (data) {
          return  _noteList(data, false);
         }, failure: (message) {
          return Container(child:  Center(child: Text(message,style: context.appInterTextStyle(),)));
         },);
        },
      ),
    );


  }
  Widget _noteList(List<NoteEntity> list,bool loading){
    return      Skeletonizer(
      enabled: loading,
      child: ListView.builder(
        itemCount: list.length,
        itemBuilder: (context, index) {
          return  NoteItem(noteEntity: list[index]);
        },
      ),
    );
  }
}
