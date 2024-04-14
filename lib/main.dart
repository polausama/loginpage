import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_application_test/Controller/LginCubit.dart';
import 'package:flutter_application_test/Screen/LoginScreen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';


void main() {
  

  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return  MultiBlocProvider(
      providers: [
               BlocProvider(create: (context) => LoginCubit()),

       
      ],
      child: MaterialApp(
            debugShowCheckedModeBanner: false,
            localizationsDelegates: [
GlobalMaterialLocalizations.delegate,
GlobalCupertinoLocalizations.delegate,
GlobalWidgetsLocalizations.delegate,
            ],
            supportedLocales: [
              Locale('ar')
            ],

             home: 
            LoginScreen(),
            ),
    );
  }
}
