import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import 'user_action.dart';
import 'user_state.dart';

Widget buildView(UserState state, Dispatch dispatch, ViewService viewService) {
  final ListAdapter adapter = viewService.buildAdapter();

  return Scaffold(
      appBar: AppBar(
        title: Text("ListView"),
        centerTitle: true,
      ),
      body: Container(
        child: ListView.builder(
            itemCount: adapter.itemCount,
            itemBuilder: adapter.itemBuilder),
      ));
}
