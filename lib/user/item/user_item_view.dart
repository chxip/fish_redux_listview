import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import 'user_item_state.dart';

Widget buildView(UserItemState state, Dispatch dispatch, ViewService viewService) {
  return Container(
    margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
    height: 120.0,
    color: Colors.white,
    alignment:  Alignment.center,
    child: GestureDetector(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          //左侧图标
          Container(
            padding: const EdgeInsets.only(right: 5.0),

            child: Icon(
              //不同type显示不同icon
              state.user.type == 1 ? Icons.account_circle : Icons.account_box,
              size: 50.0,
            ),

          ),
          //右侧
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                //标题部分
                Container(
                  height: 30,
                  child: Text(
                    state.user.name,
                    style: TextStyle(fontSize: 22.0),
                  ),
                ),
                //内容部分
                Text(
                  state.user.introduction,
                  style: TextStyle(fontSize: 16.0),
                ),
              ],
            ),
          ),
        ],
      ),
      onTap: () {
        //todo 点击事件

      },
    ),
  );
}
