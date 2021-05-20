import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_startup/core/constants/strings.dart';
import 'package:flutter_startup/logic/cubits/counter/counter_cubit.dart';
import 'package:flutter_startup/presentation/screens/home/home_view.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<CounterCubit>(
      create: (_)=>CounterCubit(),
      child: HomeView(),
    );
  }
}