import 'package:flutter/material.dart';
import 'package:left/src/features/data/domain/presentation/search_page/view/searchPage.dart';
import 'package:left/src/features/data/domain/presentation/welcome_page/view/welcome_page.dart';
import 'package:left/src/features/data/domain/presentation/login_page/view/login_page.dart';
import 'package:left/src/features/data/domain/presentation/tabs/tabs_page.dart';
import 'package:left/src/features/data/domain/presentation/forgot_page/view/forgot_password_page.dart';
import 'package:left/src/features/data/domain/presentation/signup/view/signup_page.dart';



final routes = <String,WidgetBuilder>{

'welcome' : ( BuildContext context) => WelcomePage(),
'login' : ( BuildContext context) => LoginPage(),
'forgotpass': (BuildContext context)=> ForgotPassword(),
'sign-up': (BuildContext context)=> SignupPage(),
'tabs-page': (BuildContext context)=> TabsPage(),
'searchpage': (BuildContext context)=> SearchPage(),

};
