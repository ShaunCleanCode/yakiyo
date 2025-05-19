import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../domain/use_cases/get_pill_schedules.dart';
import '../../domain/use_cases/add_pill_schedule.dart';
import '../../data/models/pill_schedule_model.dart';
import '../../data/repositories/mock_pill_schedule_repository.dart';

// Repository Provider
final pillScheduleRepositoryProvider =
    Provider<MockPillScheduleRepository>((ref) {
  return MockPillScheduleRepository();
});

// Use Case Providers
final getPillSchedulesUseCaseProvider =
    Provider<GetPillSchedulesUseCase>((ref) {
  final repository = ref.read(pillScheduleRepositoryProvider);
  return GetPillSchedulesUseCase(repository);
});

final addPillScheduleUseCaseProvider = Provider<AddPillScheduleUseCase>((ref) {
  final repository = ref.read(pillScheduleRepositoryProvider);
  return AddPillScheduleUseCase(repository);
});

// State Providers
final pillScheduleProvider =
    FutureProvider<List<PillScheduleModel>>((ref) async {
  final repository = ref.read(pillScheduleRepositoryProvider);
  return await repository.getPillSchedules();
});

final addPillScheduleProvider =
    FutureProvider.family<void, PillScheduleModel>((ref, schedule) async {
  final useCase = ref.read(addPillScheduleUseCaseProvider);
  await useCase(schedule);
});
