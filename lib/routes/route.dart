import 'package:flutter/material.dart';
import 'package:left/src/features/presentation/search_page/view/searchPage.dart';
import 'package:left/src/features/presentation/welcome_page/view/welcome_page.dart';
import 'package:left/src/features/presentation/login_page/view/login_page.dart';
import 'package:left/src/features/presentation/tabs/tabs_page.dart';
import 'package:left/src/features/presentation/forgot_page/view/forgot_password_page.dart';
import 'package:left/src/features/presentation/signup/view/signup_page.dart';
import 'package:left/src/features/presentation/filter_page/View/filter_page.dart';



final routes = <String,WidgetBuilder>{

'welcome' : ( BuildContext context) => WelcomePage(),
'login' : ( BuildContext context) => LoginPage(),
'forgotpass': (BuildContext context)=> ForgotPassword(),
'sign-up': (BuildContext context)=> SignupPage(),
'tabs-page': (BuildContext context)=> TabsPage(),
'searchpage': (BuildContext context)=> SearchPage(),
'filter': (BuildContext context)=> FilterPage(),


};
