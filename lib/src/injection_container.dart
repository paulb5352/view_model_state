import 'package:get_it/get_it.dart';
import 'core/config/services/navigation/i_navigation_service.dart';
import 'core/config/services/navigation/navigation_service.dart';
import '../src/features/profile/viewmodels/settings_view_model.dart';
import '../src/features/profile/viewmodels/personal_details_view_model.dart';
import 'features/bills/viewmodels/people_list_view_model.dart';

final injector = GetIt.instance;

void init() {
  injector.registerLazySingleton<INavigationService>(() => NavigationService());

  injector.registerFactory(
    () => SettingsViewModel(injector<INavigationService>()),
  );
  injector.registerFactory(
      () => PersonalDetailsViewModel(injector<INavigationService>())
  );
  injector.registerFactory(
    () => PeopleListViewModel(injector<INavigationService>())
  );
}
