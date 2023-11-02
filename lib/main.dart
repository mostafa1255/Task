import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_one/Core/Tools/api_Services.dart';
import 'package:task_one/Data/Manager/cubit/home_cubit.dart';
import 'package:task_one/Data/Repos/Home_Repo/Home_Repo_Imp.dart';
import 'package:task_one/Screens/Home_Screen/Home_Screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BlocProvider(
        create: (context) =>
            HomeCubit(homeRepo: HomeRepoImp(ApiServeces(Dio())))
              ..fetchUserData(),
        child: const HomeScreen(),
      ),
    );
  }
}
