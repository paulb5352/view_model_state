import 'package:flutter/material.dart';
import '../states/settings_view_state.dart';
import '../viewmodels/settings_view_model.dart';
import '../../../core/config/app_colors.dart';
import '../../../core/config/text_styles.dart';
import '../../../core/base_view.dart';

class SettingsView extends StatelessWidget {
  const SettingsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseView<SettingsViewModel, SettingsViewState>(
      setupViewModel: (SettingsViewModel viewModel) => viewModel,
      builder: (BuildContext context, SettingsViewModel viewModel,
          SettingsViewState state) {
        final BoxDecoration _boxDecoration = BoxDecoration(
            border: Border.all(width: 1, color: kcUi02Color),
            borderRadius: BorderRadius.circular(16));
        return Scaffold(
          appBar: AppBar(
            title: const Text(
              'Account Settings',
              style: h4DarkGreyStyle,
            ),
            backgroundColor: kcBrand10Color,
            automaticallyImplyLeading: false,
            elevation: 0,
          ),
          backgroundColor: kcBrand10Color,
          body: SafeArea(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(17.0),
                child: Column(
                  children: <Widget>[
                    GestureDetector(
                      onTap: viewModel.showPersonalDetailScreen,
                      child: Container(
                        height: 72,
                        decoration: _boxDecoration,
                        child: const SettingsRowItemWidget(
                          iconData: Icons.account_circle_outlined,
                          stringkey: 'Personal Details',
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    Container(
                      height: 136,
                      decoration: _boxDecoration,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          GestureDetector(
                            onTap: viewModel.showListScreen,
                            child: const SettingsRowItemWidget(
                              iconData: Icons.lock_outline,
                              stringkey: 'Change Create Pin',
                            ),
                          ),
                          const SizedBox(
                            height: 40,
                          ),
                          Row(
                            children: <Widget>[
                              const SettingsRowItemWidget(
                                iconData: Icons.account_circle_outlined,
                                stringkey: 'Allow Notifications',
                              ),
                              const Spacer(),
                              Switch(
                                value: state.notificationAllowed,
                                onChanged: (bool value) {
                                  viewModel.setNotification(value);
                                },
                                activeTrackColor:
                                    kcBrand06Color.withOpacity(0.48),
                                activeColor: kcBrand05Color,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    Container(
                      height: 136,
                      decoration: _boxDecoration,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const <Widget>[
                          SettingsRowItemWidget(
                            iconData: Icons.security_outlined,
                            stringkey: 'Privacy Policy',
                          ),
                          SizedBox(
                            height: 40,
                          ),
                          SettingsRowItemWidget(
                            iconData: Icons.description_outlined,
                            stringkey: 'Terms and Conditions',
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    const Text('App Version'),
                    const SizedBox(
                      height: 40,
                    ),
                    GestureDetector(
                      onTap: () => viewModel.contactUsActioned(context),
                      child: const Text(
                        'Contact Us',
                        style: body2BlueStyle,
                      ),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}

class SettingsRowItemWidget extends StatelessWidget {
  const SettingsRowItemWidget({
    Key? key,
    required this.iconData,
    required this.stringkey,
  }) : super(key: key);

  final IconData iconData;
  final String stringkey;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        const SizedBox(
          width: 20,
        ),
        Icon(
          iconData,
          color: kcBrand05Color,
        ),
        const SizedBox(
          width: 20,
        ),
        Text(
          stringkey,
          style: body1DarkGreyStyle,
        )
      ],
    );
  }
}
