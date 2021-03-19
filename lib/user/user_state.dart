import 'package:fish_redux/fish_redux.dart';

import 'adapter/adapter.dart';
import 'item/user_item_state.dart';

class UserState extends MutableSource implements Cloneable<UserState> {

  //ListView的总数据
  List<UserItemState> userItemStateList;

  @override
  UserState clone() {
    return UserState()
      ..userItemStateList = userItemStateList;
  }

  @override
  Object getItemData(int index) {
    // TODO: implement getItemData
    // 对应 index 下的数据
    return userItemStateList[index];
  }

  @override
  String getItemType(int index) {
    // TODO: implement getItemType
    // 对应 index 下的数据类型,在Adapter里面定义的
    return UserAdapterAdapter.userType;
  }

  @override
  // TODO: implement itemCount
  // 数据源长度
  int get itemCount => userItemStateList?.length ?? 0;

  @override
  void setItemData(int index, Object data) {
    // TODO: implement setItemData
    userItemStateList[index] = data;
  }
}

UserState initState(Map<String, dynamic> args) {
  return UserState();
}
