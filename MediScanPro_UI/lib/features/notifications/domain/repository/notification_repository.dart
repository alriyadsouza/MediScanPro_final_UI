import 'package:dartz/dartz.dart';
import 'package:mediscanpro_ui/core/data/error/failure.dart';
import 'package:mediscanpro_ui/features/medicine/domain/entities/schedule.dart';
import 'package:mediscanpro_ui/features/notifications/domain/entities/notification.dart';

abstract class NotificationRepository {
  Future<Either<Failure, Unit>> scheduleWeeklyNotification(
      NotificationData notificationData);
  Future<Either<Failure, Unit>> cancelNotification(int id, Schedule schedule);
}
