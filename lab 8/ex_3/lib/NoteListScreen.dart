// ignore_for_file: prefer_const_constructors

import 'package:flutter_application_1/AddNoteScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class NoteListScreen extends StatefulWidget {
  const NoteListScreen({super.key});

  @override
  State<NoteListScreen> createState() => _NoteListScreenState();
}

class _NoteListScreenState extends State<NoteListScreen> {
  var enableGridView = false;
  var notes = [
    {
      'title': 'Việt Nam khởi đầu tốt nhất lịch sử dự U20 châu Á',
      'content':
          'Lần đầu trong lịch sử 64 năm của giải U20 châu Á, Việt Nam thắng cả hai trận đầu tiên, trước Australia và Qatar.',
      'password': false,
    },
    {
      'title': 'Truyền thông Indonesia khen U20 Việt Nam phi thường',
      'content':
          'Nhiều báo, đài Indonesia ngạc nhiên khi Việt Nam toàn thắng hai trận đầu ở bảng đấu khó tại vòng chung kết U20 châu Á 2023',
      'password': false,
    },
    {
      'title': 'Việt Nam khởi đầu tốt nhất lịch sử dự U20 châu Á',
      'content':
          'Lần đầu trong lịch sử 64 năm của giải U20 châu Á, Việt Nam thắng cả hai trận đầu tiên, trước Australia và Qatar.',
      'password': false,
    },
    {
      'title': 'Truyền thông Indonesia khen U20 Việt Nam phi thường',
      'content':
          'Nhiều báo, đài Indonesia ngạc nhiên khi Việt Nam toàn thắng hai trận đầu ở bảng đấu khó tại vòng chung kết U20 châu Á 2023',
      'password': false,
    },
    {
      'title': 'Việt Nam khởi đầu tốt nhất lịch sử dự U20 châu Á',
      'content':
          'Lần đầu trong lịch sử 64 năm của giải U20 châu Á, Việt Nam thắng cả hai trận đầu tiên, trước Australia và Qatar.',
      'password': false,
    },
    {
      'title': 'Truyền thông Indonesia khen U20 Việt Nam phi thường',
      'content':
          'Nhiều báo, đài Indonesia ngạc nhiên khi Việt Nam toàn thắng hai trận đầu ở bảng đấu khó tại vòng chung kết U20 châu Á 2023',
      'password': false,
    },
  ];

  Widget _createNoteWidget(note, index) {
    return Slidable(
      key: ValueKey(0),
      endActionPane: ActionPane(
        // A motion is a widget used to control how the pane animates.
        motion: ScrollMotion(),

        // A pane can dismiss the Slidable.

        // All actions are defined in the children parameter.
        children: [
          // A SlidableAction can have an icon and/or a label.
          SlidableAction(
            onPressed: null,
            backgroundColor: Color(0xFFFE4A49),
            foregroundColor: Colors.white,
            icon: Icons.delete,
            label: 'Delete',
          ),
          (note['password'] as bool)
              ? SlidableAction(
                  onPressed: null,
                  backgroundColor: Colors.blueAccent,
                  foregroundColor: Colors.white,
                  icon: Icons.password_rounded,
                  label: 'Change Password',
                )
              : Container(),
          SlidableAction(
            onPressed: (v) {
              setState(() {
                note['password'] = !note['password'];
              });
            },
            backgroundColor: Color(0xFF21B7CA),
            foregroundColor: Colors.white,
            icon: (note['password'] as bool) ? Icons.lock : Icons.lock_open,
            label: (note['password'] as bool) ? 'Protected' : 'UnProtected',
          ),
        ],
      ),
      child: ListTile(
        onTap: () async {
          var resutl = await Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => AddNoteScreen(
                      note: note,
                      location_index: index,
                    )),
          );

          setState(() {
            if (resutl != null) {
              notes[resutl['index'] as int] =
                  resutl['message'] as Map<String, String>;
            }
          });
          final snackBar = SnackBar(
            content: Text('Edited!'),
            action: SnackBarAction(
              label: 'Undo',
              onPressed: () {
                // Some code to undo the change.
              },
            ),
          );

          // Find the ScaffoldMessenger in the widget tree
          // and use it to show a SnackBar.
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        },
        leading: Padding(
          padding: EdgeInsets.only(right: 10),
          child: Icon(Icons.newspaper),
        ),
        title: Text(
          note['title'],
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            overflow: TextOverflow.ellipsis,
          ),
        ),
        subtitle: Text(
          note['content'],
          overflow: TextOverflow.ellipsis,
        ),
      ),
    );
  }

  Widget _createGridWidget(note, index) {
    return ListTile(
      onLongPress: () {
        
      },
      onTap: () async {
        var resutl = await Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => AddNoteScreen(
                    note: note,
                    location_index: index,
                  )),
        );

        setState(() {
          if (resutl != null) {
            notes[resutl['index'] as int] =
                resutl['message'] as Map<String, String>;
          }
        });
        final snackBar = SnackBar(
          content: Text('Edited!'),
          action: SnackBarAction(
            label: 'Undo',
            onPressed: () {
              // Some code to undo the change.
            },
          ),
        );

// Find the ScaffoldMessenger in the widget tree
// and use it to show a SnackBar.
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
      },
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      tileColor: Colors.yellow[100],
      title: Padding(
        padding: const EdgeInsets.only(bottom: 10),
        child: Text(
          note['title'],
          style: TextStyle(
            color: Colors.red[900],
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
          maxLines: 2, // Set maxLines to 2
          overflow: TextOverflow.ellipsis, //
          textAlign: TextAlign.center, // This is the correct place
        ),
      ),
      subtitle: Text(
        note['content'],
        maxLines: 5,
        overflow: TextOverflow.ellipsis,
        style: TextStyle(
          color: Colors.black,
          fontSize: 12,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: Colors.blue[900],
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Note Management',
            ),
            IconButton(
                onPressed: () {
                  setState(() {
                    enableGridView = !enableGridView;
                  });
                },
                icon: Icon(
                  (enableGridView) ? Icons.list : Icons.grid_view,
                ))
          ],
        ),
      ),
      body: (enableGridView)
          ? GridView.count(
              padding: EdgeInsets.all(10),
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
              crossAxisCount: 2,
              children: List.generate(notes.length, (index) {
                return _createGridWidget(notes[index], index);
              }),
            )
          : ListView.separated(
              itemCount: notes.length,
              itemBuilder: (context, index) {
                return _createNoteWidget(notes[index], index);
              },
              separatorBuilder: (context, index) {
                return Divider();
              },
            ),
      floatingActionButton: FloatingActionButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
        ),
        backgroundColor: Colors.blue, // Add a floating action button
        onPressed: () async {
          var note = await Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => AddNoteScreen(
                      location_index: notes.length,
                    )),
          );

          setState(() {
            if (note != null) {
              notes.add(note);
            }
          });
          final snackBar = SnackBar(
            content: Text('A New Note Added!'),
            action: SnackBarAction(
              label: 'Undo',
              onPressed: () {
                // Some code to undo the change.
              },
            ),
          );

// Find the ScaffoldMessenger in the widget tree
// and use it to show a SnackBar.
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        },
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
    );
  }
}
