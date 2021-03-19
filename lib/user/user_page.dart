import 'package:fish_redux/fish_redux.dart';

import 'adapter/adapter.dart';
import 'user_effect.dart';
import 'user_reducer.dart';
import 'user_state.dart';
import 'user_view.dart';

class UserPage extends Page<UserState, Map<String, dynamic>> {
  UserPage()
      : super(
            initState: initState,
            effect: buildEffect(),
            reducer: buildReducer(),
            view: buildView,
            dependencies: Dependencies<UserState>(
                adapter: NoneConn<UserState>() + UserAdapterAdapter(),
                slots: <String, Dependent<UserState>>{
                }),
            middleware: <Middleware<UserState>>[
            ],);

}
