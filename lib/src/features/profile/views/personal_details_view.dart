import 'package:flutter/material.dart';
import '../states/personal_details_view_state.dart';
import '../viewmodels/personal_details_view_model.dart';
import '../../../core/config/app_colors.dart';
import '../../../core/config/text_styles.dart';
import '../../../core/base_view.dart';
import '../../../core/config/rtp_white_container.dart';

class PersonalDetailsView extends StatelessWidget {
  const PersonalDetailsView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseView<PersonalDetailsViewModel, PersonalDetailsViewState>(
      setupViewModel: (PersonalDetailsViewModel viewModel) => viewModel,
      builder: (BuildContext context, PersonalDetailsViewModel viewModel,
              PersonalDetailsViewState state) =>
          Scaffold(
        appBar: AppBar(
          title: const Text(
            'Personal Details',
            style: h4WhiteStyle,
          ),
          backgroundColor: kcBrand04Color,
        ),
        backgroundColor: kcBrand04Color,
        body: RtpWhiteContainer(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const <Widget>[
              SizedBox(
                height: 32,
              ),
              Text(
                'pid',
                style: caption1MidGreyStyle,
              ),
              SizedBox(
                height: 4,
              ),
              Text(
                'alexmiller#example.com',
                style: input1DarkGreyStyle,
              ),
              Divider(
                color: kcUi03Color,
              ),
              SizedBox(
                height: 26,
              ),
              Text(
                'First Name',
                style: caption1MidGreyStyle,
              ),
              SizedBox(
                height: 4,
              ),
              Text(
                'Alex',
                style: input1DarkGreyStyle,
              ),
              Divider(
                color: kcUi03Color,
              ),
              SizedBox(
                height: 26,
              ),
              Text(
                'Last Name',
                style: caption1MidGreyStyle,
              ),
              SizedBox(
                height: 4,
              ),
              Text(
                'Miller',
                style: input1DarkGreyStyle,
              ),
              Divider(
                color: kcUi03Color,
              ),
              SizedBox(
                height: 26,
              ),
              Text(
                'Email Address',
                style: caption1MidGreyStyle,
              ),
              SizedBox(
                height: 4,
              ),
              Text(
                'alexmiller@example.com',
                style: input1DarkGreyStyle,
              ),
              Divider(
                color: kcUi03Color,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
