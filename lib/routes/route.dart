import 'package:flutter/material.dart';
import 'package:left/src/Features/presentation/search_page/view/searchPage.dart';
import 'package:left/src/Features/presentation/welcome_page/view/welcome_page.dart';
import 'package:left/src/Features/presentation/login_page/view/login_page.dart';
import 'package:left/src/Features/presentation/tabs/tabs_page.dart';
import 'package:left/src/Features/presentation/forgot_page/view/forgot_password_page.dart';
import 'package:left/src/Features/presentation/signup/view/signup_page.dart';
import 'package:left/src/Features/presentation/filter_page/View/filter_page.dart';
import 'package:left/src/Features/presentation/collections_page/View/collections_page.dart';
import 'package:left/src/Features/presentation/collection_detail_page/View/collection_detail_page.dart';
import 'package:left/src/Features/presentation/place_detail_page/View/place_detail_page.dart';



final routes = <String,WidgetBuilder>{

'welcome' : ( BuildContext context) => WelcomePage(),
'login' : ( BuildContext context) => LoginPage(),
'forgotpass': (BuildContext context)=> ForgotPassword(),
'sign-up': (BuildContext context)=> SignupPage(),
'tabs-page': (BuildContext context)=> TabsPage(),
'searchpage': (BuildContext context)=> SearchPage(),
'filter': (BuildContext context)=> FilterPage(),
'collection': (BuildContext context)=> CollectionPage(),
'collection-page': (BuildContext context)=> CollectionDetailPage(),
'place-page': (BuildContext context)=> PlaceDetailPage(),



};
