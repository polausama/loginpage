import 'package:flutter/material.dart';
import 'package:flutter_application_test/Controller/LginCubit.dart';
import 'package:flutter_application_test/Controller/LoginState.dart';
import 'package:flutter_application_test/Widget/MyText.dart';
import 'package:flutter_application_test/Widget/CustomTextField.dart';
import 'package:flutter_application_test/Widget/RoundedButton.dart';
import 'package:flutter_application_test/Widget/SocialMediaButton.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Form(
        key: LoginCubit.get(context).formKey,
          child: SingleChildScrollView(
              child: Column(children: [
        
        SizedBox(
          height: 60,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: MyText(
                text: 'قم بتسجيل الدخول',
                color: Color(0xFF111827),
                fontsize:28 ,
              )
            )
          ],
        ),
        SizedBox(
          height: 30,
        ),
       
        SizedBox(
          height: 40,
        ),
        Custom_TextField(
          suffixIcon: Icon(Icons.person),
            hintName: 'البريد الالكتروني', 
             validator: (value) {
               if(value!.isEmpty){
                        return 'ادخل البريد الالكتروني';
                      }
                      else if(!value.contains('@') && !value.contains('.com')){
                        return 'ايميل خطأ';
                      }
                      else return null;
             },
             saved: (value) {
               LoginCubit.get(context).username = value;
             },
             ),
        SizedBox(
          height: 30,
        ),
       BlocBuilder<LoginCubit,LoginState>(builder: (context, state) {
         return  Custom_TextField(
            hintName: 'كلمة المرور',
             ispass: true,
            suffixIcon: Icon(Icons.lock),
            validator: (value) {
               if(value!.isEmpty){
                            return 'ادخل كلمة المرور';
                          }
                          else if(value.length < 8){
                            return 'كلمة مرور ضعيفة';
                          }
                          else return null;
            },
            saved: (value) {
              LoginCubit.get(context).pass = value;
            },
           );
       },
       ),
        SizedBox(
          height: 20,
        ),
        
       
        
        
        RoundedButton(
          text: 'تسجيل الدخول',
          ontap: () {
            LoginCubit.get(context).onLogin(context);
          },
        ),
        SizedBox(
          height: 40,
        ),
        
       Text('أو'),
       SizedBox(height: 60,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SocialMediaButton(
              url: 'assets/images/Button.png',
            ),
            SocialMediaButton(
              url: 'assets/images/Button(1).png',
            ),
          ],
        ),
        SizedBox(height: 40,),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'أليس لديك حساب ؟',
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontFamily: 'SF Pro Display',
                fontWeight: FontWeight.bold,
               
              ),
            ),
            SizedBox(
              width: 15,
            ),
            Text(
              'انشاء حساب',
              style: TextStyle(
                color: Color(0xFF3366FF),
                fontSize: 20,
                fontFamily: 'SF Pro Display',
                fontWeight: FontWeight.bold,
              
              ),
            )
          ],
        ),


      ]))),
    ));
  }
}
