import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'src/features/profile/views/settings_view.dart';
import 'src/injection_container.dart';
import 'src/core/config/services/navigation/i_navigation_service.dart';
import 'src/core/config/services/navigation/rpt_router.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ProviderScope(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        navigatorKey: injector<INavigationService>().navigatorKey,
        onGenerateRoute: RtpRouter.generateRoute,
        title: 'Request to Pay',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const SettingsView(),
      ),
    );
  }
}
