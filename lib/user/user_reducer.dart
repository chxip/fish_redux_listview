import 'package:fish_redux/fish_redux.dart';

import 'user_action.dart';
import 'user_state.dart';

Reducer<UserState> buildReducer() {
  return asReducer(
    <Object, Reducer<UserState>>{
      UserAction.setListData: _onSetListData,
    },
  );
}

//刷新ListView 页面
UserState _onSetListData(UserState state, Action action) {
  final UserState newState = state.clone();

  newState.userItemStateList = action.payload;

  return newState;
}
