import 'package:fish_redux/fish_redux.dart';
import 'package:fish_redux_listview/entity/user.dart';

class UserItemState implements Cloneable<UserItemState> {
  //这个就是每个item需要显示的数据
  User user;

  //构造方法
  UserItemState({this.user});

  @override
  UserItemState clone() {
    return UserItemState()
      ..user = user;
  }
}

UserItemState initState(Map<String, dynamic> args) {
  return UserItemState();
}
