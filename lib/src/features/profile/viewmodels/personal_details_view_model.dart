import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../states/personal_details_view_state.dart';
import '../../../core/config/services/navigation/i_navigation_service.dart';

class PersonalDetailsViewModel extends StateNotifier<PersonalDetailsViewState> {
  
  PersonalDetailsViewModel(this._navigationService) : super(PersonalDetailsViewState());
      
  final INavigationService _navigationService;

  Future<void> initialize() async {}

  Future<void> goBack() async {
    _navigationService.pop(arguments: 'I am back');
  }
}
