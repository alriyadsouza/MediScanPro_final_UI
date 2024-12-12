import 'package:dartz/dartz.dart';
import 'package:mediscanpro_ui/core/data/error/failure.dart';
import 'package:mediscanpro_ui/features/medicine/domain/entities/schedule.dart';
import 'package:mediscanpro_ui/features/notifications/data/datasource/local/notification_datasource.dart';
import 'package:mediscanpro_ui/features/notifications/domain/entities/notification.dart';
import 'package:mediscanpro_ui/features/notifications/domain/repository/notification_repository.dart';

class NotificationRepositoryImpl extends NotificationRepository {
  NotificationRepositoryImpl(this.localNotificationDataSource);
  final LocalNotificationDataSource localNotificationDataSource;

  @override
  Future<Either<Failure, Unit>> scheduleWeeklyNotification(
      NotificationData notificationData) async {
    try {
      await localNotificationDataSource
          .scheduleWeeklyNotification(notificationData);
      return right(unit);
    } catch (e) {
      return left(NotificationFailure());
    }
  }

  @override
  Future<Either<Failure, Unit>> cancelNotification(
      int id, Schedule schedule) async {
    try {
      await localNotificationDataSource.cancelNotification(id, schedule);
      return right(unit);
    } catch (e) {
      return left(NotificationFailure());
    }
  }
}
