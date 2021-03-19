import 'package:fish_redux/fish_redux.dart';
import 'package:fish_redux_listview/user/item/user_item_component.dart';

import '../user_state.dart';

class UserAdapterAdapter extends SourceFlowAdapter<UserState> { //这个修改为UserState,修改后会报错,别急,等下我们去改造UserState

  //这个用来区分Component类型的，
  //类似于Android recyclerView adapter 中的getItemViewType这个方法的功能
  static const userType = 'user';

  UserAdapterAdapter()
      : super(
      pool: <String, Component<Object>>{
        userType: UserItemComponent()//刚刚创建的UserItemComponent
      }
  ) ;
}
