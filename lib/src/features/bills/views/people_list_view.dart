import 'package:flutter/material.dart';
import '../viewmodels/people_list_view_model.dart';
import '../states/people_list_view_state.dart';
import '../../../core/base_view.dart';
import '../../../core/config/app_colors.dart';
import '../../../core/config/rtp_white_container.dart';
import '../../../core/config/person.dart';
import '../views/person_list_tile.dart';

class PeopleListView extends StatelessWidget {
  const PeopleListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
        
    return BaseView<PeopleListViewModel, PeopleListViewState>(
      setupViewModel: (PeopleListViewModel listViewModel) => listViewModel.initialise(),
      builder: (BuildContext context, PeopleListViewModel model, PeopleListViewState state) {
        if(state is PeopleLoading){
          return loadingScreen();               
        } else {
          return fullScreen(model);
        }
      }
    );
  }
}
Widget fullScreen(PeopleListViewModel model){
  return  
    Scaffold(
      backgroundColor: kcBrand04Color,
      appBar: AppBar(
        title: const Text('List View'),
        backgroundColor: kcBrand04Color,
      ),
      body: RtpWhiteContainer(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                    onPressed: (){
                      model.rebuildList('A');                          
                    }, 
                    child: const Text('A')
                  ),
                  const SizedBox(width: 40,),
                  TextButton(
                    onPressed: (){
                      model.rebuildList('B');
                    }, 
                    child: const Text('B'),
                  ),
                ],
              ),
              ListView(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                children: model.currentPeople!.map(
                  (Person person) => getPersonTile(person)).toList(),
              )
            ],
          ),
        ),
      ),                  
  );
}
Widget loadingScreen(){
  return
    Scaffold(
      appBar: AppBar(title:  const Text('Loading Data...'),),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: const [
          Center(child: Text('Loading Your Results', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),)),
          CircularProgressIndicator(), 
        ]),
    );
}