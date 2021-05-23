import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_startup/logic/blocs/user/user_bloc.dart';

class UserView extends StatelessWidget {
  const UserView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Data User"),),
      body: Container(
        padding: EdgeInsets.all(16),
        child: BlocBuilder<UserBloc, UserState>(
          builder: (context, state){
            if(state is UserInitialState){
                return Text("initial");
            }else if(state is UserFetchingState){
              return CircularProgressIndicator();
            }else if(state is UserFetchedState){
              return Text("HAloooo");
            }
            return Text("error");
          },
        )
      ),
    );
  }
}
