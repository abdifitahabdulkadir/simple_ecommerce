import 'package:flutter_riverpod/flutter_riverpod.dart';

final bottomBarProvider = StateNotifierProvider((ref) => BottomBarController());

class BottomBarController extends StateNotifier<int> {
  BottomBarController() : super(0);

  void setUpdate(int value) {
    state = value;
  }
}
