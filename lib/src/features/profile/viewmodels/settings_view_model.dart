import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../states/settings_view_state.dart';
import '../../../core/config/services/navigation/rtp_route_paths.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../../../core/config/services/navigation/i_navigation_service.dart';

class SettingsViewModel extends StateNotifier<SettingsViewState> {
  SettingsViewModel(this._navigationService)
      : super(SettingsViewState(notificationAllowed: false));
  final INavigationService _navigationService;

  Future<void> setNotification(bool enabled) async {
    state = state.copyWith(notificationAllowed: enabled);
  }

  Future<void> contactUsTapped() async {
    final Uri emailLaunchUri = Uri(
      scheme: 'mailto',
      path: 'help@billpay.com',
    );
    launch(emailLaunchUri.toString());
  }

  Future<void> contactUsActioned(BuildContext context) async {
    final Uri emailLaunchUri = Uri(
      scheme: 'mailto',
      path: 'help@billpay,com',
    );
    if (await canLaunch(emailLaunchUri.toString())) {
      await launch(emailLaunchUri.toString());
    } else {
      showDialog(
        context: context,
        builder: (BuildContext context) => AlertDialog(
          title: const Text('Contact Us'),
          content: const Text('contact_us_send_email_to'),
          actions: <Widget>[
            TextButton(
              child: const Text('contact_us_copy_email'),
              onPressed: () {
                Clipboard.setData(
                    const ClipboardData(text: 'contact_us_email'));
              },
            ),
            TextButton(
              child: const Text('OK'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        ),
      );
    }
  }

  Future<void> changePin() async {
    await _navigationService.pushNamed(RtpRoutePaths.verifyPin);
  }

  Future<void> showPersonalDetailScreen() async {
    await _navigationService.pushNamed(RtpRoutePaths.personalDeatils);
  }
  Future<void> showListScreen() async {
    await _navigationService.pushNamed(RtpRoutePaths.list);
  }
}
