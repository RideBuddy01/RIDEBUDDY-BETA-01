import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class DataBase{
  Future<void> uploadoffer(String origin, String destination, String date) async {
    final email =await FirebaseAuth.instance.currentUser?.email;
    FirebaseFirestore.instance.collection('User').doc(email).set({
      'Origin' : origin,
      'Destination' : destination,
      'Date' : date,
      'Type' : 'Offer'
    });
  }

  Future<void> uploadtake(String origin, String destination, String date) async {
    final email =await FirebaseAuth.instance.currentUser?.email;
    FirebaseFirestore.instance.collection('User').doc(email).set({
      'Origin' : origin,
      'Destination' : destination,
      'Date' : date,
      'Type' : 'Take'
    });
  }
}