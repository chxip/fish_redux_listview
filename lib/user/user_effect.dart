import 'package:fish_redux/fish_redux.dart';
import 'package:fish_redux_listview/entity/user.dart';
import 'item/user_item_state.dart';
import 'user_action.dart';
import 'user_state.dart';

Effect<UserState> buildEffect() {
  return combineEffects(<Object, Effect<UserState>>{
    Lifecycle.initState: _init, //页面一加载就会执行此方法
  });
}


void _init(Action action, Context<UserState> ctx) {
  //模拟获取数据
  List<User> userList = List();
  userList.add(User()
    ..type = 1
    ..name = "11111"
    ..introduction = "11111");
  userList.add(User()
    ..type = 2
    ..name = "22222"
    ..introduction = "22222");

  userList.add(User()
    ..type = 3
    ..name = "333333"
    ..introduction = "333333");

  userList.add(User()
    ..type = 4
    ..name = "444444"
    ..introduction = "444444");

  ///构建符合要求的列表数据源
  List<UserItemState> items = List.generate(userList.length, (index) {
    return UserItemState(user: userList[index]);
  });
  //发送更新view的消息
  ctx.dispatch(UserActionCreator.onSetListData(items));
}
