import 'package:cloud_firestore/cloud_firestore.dart';

class FirestoreService {
  // get collection
  final CollectionReference notes = FirebaseFirestore.instance.collection(
    "notes",
  );

  // create: add a new note
  Future<void> addNote(String note) {
    return notes.add({'note': note, 'timestamp': Timestamp.now()});
  }

  // read: get notes from database
  Stream<QuerySnapshot> getNotesStream() {
    final noteStream = notes.orderBy("timestamp", descending: true).snapshots();

    return noteStream;
  }

  // update: update notes given a doc id
  Future<void> updateNote(String docID, String newNote) async {
    return notes.doc(docID).update({
      'note': newNote,
      'timestamp': Timestamp.now(),
    });
  }

  // delete: delete notes given a doc id
  Future<void> deleteNote(String docID) async {
    return notes.doc(docID).delete();
  }
}
