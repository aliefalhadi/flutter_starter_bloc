import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_startup/logic/blocs/user/user_bloc.dart';
import 'package:flutter_startup/presentation/screens/user/user_view.dart';

class UserScreen extends StatefulWidget {
  const UserScreen({Key key}) : super(key: key);

  @override
  _UserScreenState createState() => _UserScreenState();
}

class _UserScreenState extends State<UserScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("User"),
      ),
      body: BlocProvider<UserBloc>(
        create: (_) => UserBloc()..add(GetUsersEvent()),
        child: UserView(),
      ),
    );
  }
}
