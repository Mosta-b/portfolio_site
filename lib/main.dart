import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolio_site/core/theme/app_theme.dart';
import 'package:portfolio_site/core/theme/colors.dart';
import 'package:portfolio_site/presentation/bloc/home_control_bloc.dart';
import 'package:portfolio_site/presentation/views/main_view.dart';

void main() {
  runApp(
    BlocProvider(
      create: (context) => HomeControlBloc(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mustapha Bennai',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        scaffoldBackgroundColor: ColorsManger.primaryColor,
        textTheme: buildTextTheme(),
      ),
      home: const MainView(),
    );
  }
}
