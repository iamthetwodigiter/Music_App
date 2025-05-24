import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:music_app/features/home/models/service_model.dart';
import 'package:music_app/features/home/repositories/services_repository.dart';

// Provider for the repository
final servicesRepositoryProvider = Provider<ServicesRepository>((ref) {
  return ServicesRepository();
});

// Provider for the services state
final servicesProvider = FutureProvider<List<ServiceModel>>((ref) async {
  final repository = ref.watch(servicesRepositoryProvider);
  return repository.getServices();
});
