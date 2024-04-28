// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class AddNoteScreen extends StatefulWidget {
  var note;
  int location_index;
  AddNoteScreen({this.note, super.key, required this.location_index});

  @override
  State<AddNoteScreen> createState() => _AddNoteScreenState();
}

class _AddNoteScreenState extends State<AddNoteScreen> {
  var _key = GlobalKey<FormState>();
  var focus = FocusNode();

  String title = '';
  String message = '';

  void _saveForm() {
    if (_key.currentState?.validate() ?? false) {
      _key.currentState?.save();
      var result = {
        'index': widget.location_index,
        'message': {'title': title, 'content': message}
      };

      Navigator.pop(
          context,
          (widget.note != null)
              ? result
              : {'title': title, 'content': message});
    } else {
      focus.requestFocus();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: Colors.blue[900],
        title: Text((widget.note != null) ? "Edit Note" : "Create New Note"),
      ),
      body: Form(
        key: _key,
        child: Container(
          padding: EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                TextFormField(
                  initialValue: widget.note != null ? widget.note['title'] : "",
                  onSaved: (v) {
                    title = v ?? "";
                  },
                  validator: (v) {
                    if (v == null || v.isEmpty) {
                      return "Title is required";
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    labelText: "Title",
                    border: OutlineInputBorder(),
                  ),
                  onChanged: (String value) {
                    setState(() {});
                  },
                ),
                SizedBox(height: 20.0),
                TextFormField(
                  initialValue:
                      widget.note != null ? widget.note['content'] : "",
                  focusNode: focus,
                  onSaved: (v) {
                    message = v ?? "";
                  },
                  validator: (v) {
                    if (v == null || v.isEmpty) {
                      return "Note is required";
                    }
                    if (v.length < 10) {
                      return "Note must be at least 10 characters";
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    labelText: "Content",
                    border: OutlineInputBorder(),
                  ),
                  maxLines: 10,
                ),
                SizedBox(height: 20.0),
                ElevatedButton(
                  onPressed: _saveForm,
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(double.infinity, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    primary: Colors.white,
                    onPrimary: Colors.blue[900],
                  ),
                  child: (widget.note != null)
                      ? Text("Save All Changes")
                      : Text("Create New Note"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
