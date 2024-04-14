import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_test/Controller/LoginState.dart';

import 'package:flutter_bloc/flutter_bloc.dart';


class LoginCubit extends Cubit<LoginState> {
  String? username;
  String? pass;
  bool hidden = true;
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  LoginCubit() : super(InitLoginState());
  static LoginCubit get(context) => BlocProvider.of(context);

   void onLogin(BuildContext context) {
    bool valid = formKey.currentState!.validate();
    if (valid) {
      formKey.currentState!.save();
      
      }
      
     
    }
   
    }
 

  


