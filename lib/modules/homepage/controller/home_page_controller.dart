import 'package:atg_project/modules/homepage/model/lesson_model.dart';
import 'package:atg_project/modules/homepage/network_calls/home_page_network_calls.dart';

import 'package:get/get_state_manager/get_state_manager.dart';

import '../model/program_model.dart';

class HomepageController extends GetxController {
  int _selectedIndex = 0;
  ProgramModel? allPost;
  LessonModel? allPost1;
  void _onItemTapped(int index) {
    _selectedIndex = index;
  }

  void makeTodoAPICall() {
    HomePageNetworkCalls.getProgramData().then(
        (decoded) => {allPost = (ProgramModel.fromJson(decoded)), update()});
  }

  void makeTodoAPICall1() {
    HomePageNetworkCalls.getLessonData().then(
        (decoded) => {allPost1 = (LessonModel.fromJson(decoded)), update()});
  }

  @override
  onInit() {
    super.onInit();
    print('Controller init state called');
    makeTodoAPICall();
    makeTodoAPICall1();
  }
}
