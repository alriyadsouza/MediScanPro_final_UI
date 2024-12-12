import 'package:mediscanpro_ui/core/services/service_locator.dart';
import 'package:mediscanpro_ui/features/calendar/presentation/controller/cubit/calendar_cubit.dart';

class CalendarDependencies {
  static void registerDependencies() {
    sl.registerLazySingleton<CalendarCubit>(() => CalendarCubit());
  }
}
