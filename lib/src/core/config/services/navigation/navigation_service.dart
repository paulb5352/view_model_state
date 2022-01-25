import 'package:flutter/material.dart';
import 'i_navigation_service.dart';

class NavigationService implements INavigationService {
  @override
  Future<T?> pushNamed<T, S>(String routeName, {S? arguments}) {
    if (navigatorKey.currentState != null) {
      return navigatorKey.currentState!.pushNamed(
        routeName,
        arguments: arguments,
      );
    }
    return throw (Exception());
  }

  @override
  Future<T?> pushNamedAndRemoveUntil<T, S>(String routeName, {S? arguments}) {
    return navigatorKey.currentState!.pushNamedAndRemoveUntil(
      routeName,
      (Route<dynamic> route) => false,
      arguments: arguments,
    );
  }

  @override
  void pop<T>({T? arguments}) {
    return navigatorKey.currentState!.pop(arguments);
  }

  @override
  void popUntil(String routeName, {dynamic arguments}) {
    navigatorKey.currentState!
        .popUntil((Route<void> route) => route.settings.name == routeName);
  }

  final GlobalKey<NavigatorState> _navigatorKey = GlobalKey<NavigatorState>();

  @override
  GlobalKey<NavigatorState> get navigatorKey => _navigatorKey;
}
