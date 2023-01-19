import 'package:flutter/material.dart';
import 'pages/favorite_topics.dart';
import 'pages/forgot_password.dart';
import 'pages/home/main_page.dart';
import 'pages/language_option.dart';
import 'pages/new_password.dart';
import 'pages/sign_in_page.dart';
import 'pages/sign_up_page.dart';
import 'pages/splash_pages.dart';
import 'pages/terms_condition.dart';
import 'pages/user_change_password.dart';
import 'pages/verification_code.dart';
import 'pages/welcome_page.dart';
import 'provider/bookmark_provider.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => BookmarkProvider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (context) => SplashPage(),
          '/welcome': (context) => WelcomePage(),
          '/sign-in': (context) => SignInPage(),
          '/sign-up': (context) => SignUpPage(),
          '/forgot-password-email': (context) => ForgotPassword(),
          '/verify-code': (context) => VerificationCode(),
          '/new-password': (context) => NewPassword(),
          '/favorite-topics': (context) => FavoriteTopics(),
          '/main-page': (context) => MainPage(),
          '/language': (context) => LanguageOption(),
          '/user-change-pass': (context) => UserChangePassword(),
          '/terms-condition': (context) => TermsCondition(),
        },
      ),
    );
  }
}
