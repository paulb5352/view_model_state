
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../states/people_list_view_state.dart';
import '../../../core/config/services/navigation/i_navigation_service.dart';
import '../../../core/config/person.dart';
import '../../../core/config/data.dart' as data;

class PeopleListViewModel extends StateNotifier<PeopleListViewState> {

  PeopleListViewModel(this._navigationService) : super(PeopleListViewState());

  final INavigationService _navigationService;

  List<Person>? currentPeople;

  void initialise(){
    currentPeople = data.people;
  }

  Future<void> goBack() async {
    _navigationService.pop(arguments: '');
  }  
  Future<void> rebuildList(String char) async {
    state = PeopleLoading();
    await Future.delayed(const Duration(seconds: 3));
    currentPeople = data.people.where((person) => person.category == char).toList();
    state = PeopleLoaded();
  }
}

class PeopleLoading extends PeopleListViewState{
  PeopleLoading() : super();
}
class PeopleLoaded extends PeopleListViewState{
  PeopleLoaded() : super();
}