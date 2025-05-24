import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:music_app/features/home/models/service_model.dart';

class ServicesRepository {
  final FirebaseFirestore _firestore;

  ServicesRepository({FirebaseFirestore? firestore})
      : _firestore = firestore ?? FirebaseFirestore.instance;

  Future<List<ServiceModel>> getServices() async {
    try {
      final snapshot = await _firestore.collection('services').get();
      return snapshot.docs
          .map((doc) => ServiceModel.fromJson(doc.data()))
          .toList();
    } catch (e) {
      throw Exception('Failed to fetch services: $e');
    }
  }
}
