import 'package:fish_redux/fish_redux.dart';

import 'user_item_state.dart';
import 'user_item_view.dart';

class UserItemComponent extends Component<UserItemState> {
  UserItemComponent()
      : super(
            view: buildView,
            dependencies: Dependencies<UserItemState>(
                adapter: null,
                slots: <String, Dependent<UserItemState>>{
                }),);

}
