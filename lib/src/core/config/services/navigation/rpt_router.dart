import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'routing_data.dart';
// import 'package:rtp_consumer_app/src/core/models/create_user_response.dart';
// import 'package:rtp_consumer_app/src/core/models/mandate.dart';
// import 'package:rtp_consumer_app/src/features/billers/views/biller_details_view.dart';
// import 'package:rtp_consumer_app/src/features/billers/views/connect_biller_view.dart';
// import 'package:rtp_consumer_app/src/features/billers/views/connection_declined_view.dart';
// import 'package:rtp_consumer_app/src/features/billers/views/connection_request_view.dart';
// import 'package:rtp_consumer_app/src/features/billers/views/connection_success_view.dart';
// import 'package:rtp_consumer_app/src/features/billers/views/new_and_pending_connections_view.dart';
// import 'package:rtp_consumer_app/src/features/bills/views/bill_decline_view.dart';
// import 'package:rtp_consumer_app/src/features/bills/views/pay_full_amount_view.dart';
// import 'package:rtp_consumer_app/src/features/bills/views/payment_in_progress_view.dart';
// import 'package:rtp_consumer_app/src/features/bills/views/payment_method_selection_view.dart';
// import 'package:rtp_consumer_app/src/features/bills/views/update_amount_view.dart';
// import 'package:rtp_consumer_app/src/features/bills/views/bill_details_view.dart';
// import 'package:rtp_consumer_app/src/features/forgot_password/views/forgot_password_email_view.dart';
// import 'package:rtp_consumer_app/src/features/forgot_password/views/forgot_password_verification_view.dart';
// import 'package:rtp_consumer_app/src/features/forgot_password/views/reset_password_view.dart';
// import 'package:rtp_consumer_app/src/features/home/views/bottom_tab_bar_view.dart';
// import 'package:rtp_consumer_app/src/features/login/views/login_view.dart';
// import 'package:rtp_consumer_app/src/features/login/views/pin_login_view.dart';
// import 'package:rtp_consumer_app/src/features/notifications/views/allow_notifications_view.dart';
import '../../../../features/profile/views/personal_details_view.dart';
// import 'package:rtp_consumer_app/src/features/payment/views/bank_selection_view.dart';
// import 'package:rtp_consumer_app/src/features/registration/views/connect_to_charity_view.dart';
// import 'package:rtp_consumer_app/src/features/setup_pin/views/setup_new_pin_view.dart';
// import 'package:rtp_consumer_app/src/features/profile/views/verify_pin_view.dart';
// import 'package:rtp_consumer_app/src/features/registration/views/change_email_view.dart';
// import 'package:rtp_consumer_app/src/features/registration/views/congrats_view.dart';
// import 'package:rtp_consumer_app/src/features/registration/views/register_view.dart';
// import 'package:rtp_consumer_app/src/features/registration/views/setup_pin_view.dart';
// import 'package:rtp_consumer_app/src/features/registration/views/splash_view.dart';
// import 'package:rtp_consumer_app/src/features/registration/views/verify_email_view.dart';
// import 'package:rtp_consumer_app/src/features/registration/views/welcome_view.dart';
// import 'package:rtp_consumer_app/src/features/setup_pin/views/forgot_pin_login_view.dart';
import '../../../../features/bills/views/people_list_view.dart';

import 'rtp_route_paths.dart';
import '../../app_colors.dart';
import '../../string_extensions.dart';

class RtpRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final RoutingData routingData = settings.name!.getRoutingData;
    switch (routingData.route) {
      // case RtpRoutePaths.splash:
      //   return CupertinoPageRoute<void>(
      //     builder: (_) => const SplashView(),
      //     settings: settings,
      //   );
      // case RtpRoutePaths.welcome:
      //   return CupertinoPageRoute<void>(
      //     builder: (_) => const WelcomeView(),
      //     settings: settings,
      //   );
      // case RtpRoutePaths.login:
      //   return CupertinoPageRoute<void>(
      //     builder: (_) => const LoginView(),
      //     settings: settings,
      //   );
      // case RtpRoutePaths.register:
      //   return CupertinoPageRoute<void>(
      //     builder: (_) => const RegisterView(),
      //     settings: settings,
      //   );
      // case RtpRoutePaths.pinLogin:
      //   return CupertinoPageRoute<void>(
      //     builder: (_) => const PinLoginView(),
      //     settings: settings,
      //   );
      // case RtpRoutePaths.setupPin:
      //   return CupertinoPageRoute<void>(
      //     builder: (_) => const SetupPinView(),
      //     settings: settings,
      //   );

      // case RtpRoutePaths.verifyEmail:
      //   final CreateUserResponse parameter =
      //       settings.arguments! as CreateUserResponse;

      //   return CupertinoPageRoute<void>(
      //     builder: (_) => VerifyEmailView(
      //       namePrefix: parameter.namePrefix!,
      //       firstName: parameter.firstName!,
      //       lastName: parameter.lastName!,
      //       phoneNumber: parameter.phone!,
      //       email: parameter.email!,
      //     ),
      //     settings: settings,
      //   );

      // case RtpRoutePaths.changeEmail:
      //   final CreateUserResponse parameter =
      //       settings.arguments! as CreateUserResponse;

      //   return CupertinoPageRoute<void>(
      //     builder: (_) => ChangeEmailView(
      //         namePrefix: parameter.namePrefix!,
      //         firstName: parameter.firstName!,
      //         lastName: parameter.lastName!,
      //         phoneNumber: parameter.phone!),
      //     settings: settings,
      //   );
      // case RtpRoutePaths.verifyPin:
      //   return CupertinoPageRoute<void>(
      //     builder: (_) => const VerifyPinView(),
      //     settings: settings,
      //   );
      // case RtpRoutePaths.setupNewPin:
      //   final String parameter = settings.arguments! as String;
      //   return CupertinoPageRoute<void>(
      //     builder: (_) => SetupNewPinView(
      //       title: parameter,
      //     ),
      //     settings: settings,
      //   );
      // case RtpRoutePaths.congrats:
      //   final CreateUserResponse parameter =
      //       settings.arguments! as CreateUserResponse;
      //   return CupertinoPageRoute<void>(
      //     builder: (_) => CongratsView(
      //       pidData: parameter.vbppPid!,
      //     ),
      //     settings: settings,
      //   );
      // case RtpRoutePaths.allowNotifications:
      //   final CreateUserResponse parameter =
      //       settings.arguments! as CreateUserResponse;
      //   return CupertinoPageRoute<void>(
      //     builder: (_) => AllowNotificationsView(
      //       firebaseIdData: parameter.firebaseId!,
      //       pidData: parameter.vbppPid!,
      //     ),
      //     settings: settings,
      //   );
      // case RtpRoutePaths.forgotPinLogin:
      //   return CupertinoPageRoute<void>(
      //     builder: (_) => const ForgotPinLoginView(),
      //     settings: settings,
      //   );
      // case RtpRoutePaths.bottomTabBar:
      //   final int parameter = settings.arguments! as int;
      //   return CupertinoPageRoute<void>(
      //     builder: (_) => BottomTabBarView(
      //       index: parameter,
      //     ),
      //     settings: settings,
      //   );
      // case RtpRoutePaths.connectBiller:
      //   final String parameter = settings.arguments! as String;
      //   return CupertinoPageRoute<void>(
      //     builder: (_) => ConnectBillerView(
      //       pidData: parameter,
      //     ),
      //     settings: settings,
      //   );
      // case RtpRoutePaths.charityConnection:
      //   return CupertinoPageRoute<void>(
      //     builder: (_) => const CharityConnectionView(),
      //     settings: settings,
      //   );
      // case RtpRoutePaths.connectionSuccess:
      //   return CupertinoPageRoute<void>(
      //     builder: (_) => const ConnectionSuccessView(),
      //     settings: settings,
      //   );
      // case RtpRoutePaths.connectionDeclined:
      //   return CupertinoPageRoute<void>(
      //     builder: (_) => const ConnectionDeclinedView(),
      //     settings: settings,
      //   );
      // case RtpRoutePaths.connectionRequest:
      //   final Mandate parameter = settings.arguments! as Mandate;
      //   return CupertinoPageRoute<void>(
      //     builder: (_) => ConnectionRequestView(
      //       mandate: parameter,
      //     ),
      //     settings: settings,
      //   );
      // case RtpRoutePaths.newAndPendingConnections:
      //   final List<Mandate> parameter = settings.arguments! as List<Mandate>;
      //   return CupertinoPageRoute<void>(
      //     builder: (_) => NewAndPendingConnectionsView(
      //       mandates: parameter,
      //     ),
      //     settings: settings,
      //   );
      // case RtpRoutePaths.payFullAmount:
      //   return CupertinoPageRoute<void>(
      //     builder: (_) => const PayFullAmountView(),
      //     settings: settings,
      //   );
      // case RtpRoutePaths.updateAmount:
      //   final int amount = settings.arguments! as int;
      //   return CupertinoPageRoute<int?>(
      //     builder: (_) => UpdateAmountView(
      //       amount: amount,
      //     ),
      //     settings: settings,
      //   );
      // case RtpRoutePaths.paymentMethodSelection:
      //   return CupertinoPageRoute<void>(
      //     builder: (_) => const PaymentMethodSelectionView(),
      //     settings: settings,
      //   );
      // case RtpRoutePaths.billDetails:
      //   return CupertinoPageRoute<void>(
      //     builder: (_) => const BillDetailsView(),
      //     settings: settings,
      //   );
      // case RtpRoutePaths.paymentInProgress:
      //   return CupertinoPageRoute<void>(
      //     builder: (_) => const PaymentInProgressView(),
      //     settings: settings,
      //   );
      // case RtpRoutePaths.billerDeatils:
      //   return CupertinoPageRoute<void>(
      //     builder: (_) => const BillerDetailsView(),
      //     settings: settings,
      //   );
      case RtpRoutePaths.personalDeatils:
        return CupertinoPageRoute<void>(
          builder: (_) => const PersonalDetailsView(),
          settings: settings,
        );
      case RtpRoutePaths.list:
        return CupertinoPageRoute<void>(
          builder: (_) => const PeopleListView(),
          settings: settings,
        );
      // case RtpRoutePaths.bankSelection:
      //   return CupertinoPageRoute<void>(
      //     builder: (_) => const BankSelectionView(),
      //     settings: settings,
      //   );
      // case RtpRoutePaths.billDecline:
      //   return CupertinoPageRoute<void>(
      //     builder: (_) => const BillDeclineView(),
      //     settings: settings,
      //   );
      // case RtpRoutePaths.forgotPasswordEmail:
      //   return CupertinoPageRoute<void>(
      //     builder: (_) => const ForgotPasswordEmailView(),
      //     settings: settings,
      //   );
      // case RtpRoutePaths.forgotPasswordVerification:
      //   return CupertinoPageRoute<void>(
      //     builder: (_) => const ForgotPasswordVerificationView(),
      //     settings: settings,
      //   );
      // case RtpRoutePaths.resetPassword:
      //   return CupertinoPageRoute<void>(
      //     builder: (_) => const ResetPasswordView(),
      //     settings: settings,
      //   );
      default:
        return CupertinoPageRoute<void>(
          builder: (_) => Scaffold(
            body: Container(
              color: kcBrand10Color,
              width: double.infinity,
              height: double.infinity,
              child: Center(
                  child: Text('404: ${routingData.route} is not defined')),
            ),
          ),
        );
    }
  }
}
