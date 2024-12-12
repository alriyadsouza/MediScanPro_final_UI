import 'package:firebase_auth/firebase_auth.dart';
import 'package:get_it/get_it.dart';

import 'package:mediscanpro_ui/core/data/remote/network_connection.dart';
import 'package:mediscanpro_ui/core/resources/router.dart';
import 'package:mediscanpro_ui/core/services/local_notification_services.dart';
import 'package:mediscanpro_ui/core/utils/route_utils.dart';
import 'package:mediscanpro_ui/features/authentication/core/auth_dependencies.dart';
import 'package:mediscanpro_ui/features/calendar/core/calendar_dependencies.dart';
import 'package:mediscanpro_ui/features/medicine/core/medicine_dependencies.dart';
import 'package:mediscanpro_ui/features/notifications/core/notification_dependencies.dart';

GetIt sl = GetIt.instance;

class ServiceLocator {
  static init() {
    // Core
    sl.registerFactory(() => FirebaseAuth.instance);
    sl.registerFactory(() => NetworkConnection());
    sl.registerLazySingleton(() => AppRouter(sl()));
    sl.registerLazySingleton(() => GoRouterRefreshStream(sl()));
    sl.registerLazySingleton(() => LocalNotificationServices());

    AuthDependencies.registerDependencies();
    CalendarDependencies.registerDependencies();
    MedicineDependencies.registerDependencies();
    NotificationDependencies.registerDependencies();
  }
}
