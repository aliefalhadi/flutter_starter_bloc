import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_startup/core/constants/app_router_strings.dart';
import 'package:flutter_startup/core/constants/strings.dart';
import 'package:flutter_startup/logic/cubits/counter/counter_cubit.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(Strings.homeScreenTitle),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              Strings.textKetCounter,
            ),
            BlocBuilder<CounterCubit, CounterState>(
              buildWhen: (previous, current)=> previous.counter != current.counter,
              builder: (context, state) => Text(
                state.counter.toString(),
                style: Theme.of(context).textTheme.headline4,
              ),
            ),

            RaisedButton(
              child: Text("data user"),
              onPressed: (){
                Navigator.pushNamed(context, AppRouterStrings.user);
              },
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => context.read<CounterCubit>().increment(),
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}