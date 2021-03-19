import 'package:fish_redux/fish_redux.dart';

import 'item/user_item_state.dart';

//TODO replace with your own action
enum UserAction {
  setListData
}

class UserActionCreator {
  static Action onSetListData(List<UserItemState> items) {
    return Action(
        UserAction.setListData,
        payload: items,
    );
  }
}
