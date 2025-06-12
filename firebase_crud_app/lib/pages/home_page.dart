import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_crud_app/service/firestore.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // firestore
  final FirestoreService firestoreService = FirestoreService();

  // text controller
  final TextEditingController textController = TextEditingController();

  // open diagol to add note
  void openNoteBox({String? docID}) {
    showDialog(
      context: context,
      builder:
          (context) => AlertDialog(
            content: TextField(
              // user input
              controller: textController,
            ),
            actions: [
              // button to save
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueAccent,
                ),
                onPressed: () {
                  // add a new note
                  if (docID == null) {
                    firestoreService.addNote(textController.text);
                  } else {
                    // update note
                    firestoreService.updateNote(docID, textController.text);
                  }

                  // clear text controller
                  textController.clear();

                  // close dialog
                  Navigator.pop(context);
                },
                child: Text("Add", style: TextStyle(color: Colors.white),),
              ),
            ],
          ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Notes", style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.blueAccent,
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blueAccent,
        onPressed: openNoteBox,
        child: Icon(Icons.add, color: Colors.white,),
      ),
      body: StreamBuilder<QuerySnapshot>(
        stream: firestoreService.getNotesStream(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            List noteList = snapshot.data!.docs;

            // display as a list
            return ListView.builder(
              itemCount: noteList.length,
              itemBuilder: (context, index) {
                // get each individual doc
                DocumentSnapshot document = noteList[index];
                String docID = document.id;

                // get note from each doc
                Map<String, dynamic> data =
                    document.data() as Map<String, dynamic>;
                String noteText = data["note"];

                // display as a list tile
                return ListTile(
                  title: Text(noteText),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      // update
                      IconButton(
                        onPressed: () => openNoteBox(docID: docID),
                        icon: Icon(Icons.settings),
                      ),

                      // delete
                      IconButton(
                        onPressed: () => firestoreService.deleteNote(docID),
                        icon: Icon(Icons.delete),
                      ),
                    ],
                  ),
                );
              },
            );
          } else {
            return const Text("No notes...");
          }
        },
      ),
    );
  }
}
