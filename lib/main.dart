import 'package:amoor1/counter/cubit.dart';
import 'package:amoor1/month/cubit.dart';
import 'package:amoor1/myMovies/cubit.dart';
import 'package:amoor1/personal/view.dart';
import 'package:amoor1/toggleTheme/cubit.dart';
// import 'package:easy_localization/easy_localization.dart';

// import 'package:firebase_core/firebase_core.dart';
// import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'core/logic/firebase_notifications.dart';
import 'core/logic/helper_methods.dart';
import 'counter/view.dart';
import 'firebase_options.dart';
import 'month/view.dart';
import 'myMovies/view.dart';
import 'myMovies/view2.dart';
import 'screens/telegram/veiw.dart';
import 'toggleTheme/view.dart';
import 'weather/view.dart';

late SharedPreferences prefs;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // await EasyLocalization.ensureInitialized();
  prefs = await SharedPreferences.getInstance();
  // init();
  // FirebaseMessaging.instance.getToken().then((value) {
  //   print("hello" + "-" * 20);
  //   print(value);
  // });
  // await Firebase.initializeApp(
  //   options: DefaultFirebaseOptions.currentPlatform,
  // );

  runApp(
    // EasyLocalization(
    //     supportedLocales: [Locale('en'), Locale('ar'), Locale('gr')],
    //     path: 'assets/translations',
    //     // <-- change the path of the translation files
    //     fallbackLocale: Locale('en'),
    //     startLocale:  Locale('gr'),
          StartHome(),
  );
}

class StartHome extends StatelessWidget {
  const StartHome({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => CounterCubit(),
        ),
        BlocProvider(
          create: (context) => MonthsCubit(),
        ),
        BlocProvider(
          create: (context) => MoviesCubit(),
        ),
        BlocProvider(
          create: (context) => ThemeCubit(),
        ),
      ],
      child: ScreenUtilInit(
          designSize: Size(375, 812),
          builder: (context, child) {
            ThemeCubit cubit = BlocProvider.of(context);
            return BlocBuilder(
                bloc: cubit,
                builder: (context, state) {
                  return MaterialApp(
                    debugShowCheckedModeBanner: false,
                    // localizationsDelegates: context.localizationDelegates,
                    // supportedLocales: context.supportedLocales,
                    // locale: context.locale,
                    themeMode: cubit.isOn ? ThemeMode.light : ThemeMode.dark,
                    theme: ThemeData(
                        platform: TargetPlatform.iOS,
                        fontFamily: "Viga",
                        primarySwatch: getMaterialColor(Color(0xffFC6011)),
                        scaffoldBackgroundColor: Colors.white,
                        appBarTheme: AppBarTheme(
                            backgroundColor: Colors.white,
                            iconTheme: IconThemeData(color: Colors.black),
                            titleTextStyle: TextStyle(color: Colors.black)),
                        textTheme: TextTheme(
                            bodyMedium: TextStyle(color: Colors.black)),
                        iconTheme: IconThemeData(color: Colors.black)),
                    darkTheme: ThemeData(
                        platform: TargetPlatform.iOS,
                        fontFamily: "Viga",
                        scaffoldBackgroundColor: Colors.black,
                        primarySwatch: getMaterialColor(Color(0xffFC6011)),
                        appBarTheme: AppBarTheme(
                            backgroundColor: Colors.black,
                            iconTheme: IconThemeData(color: Colors.white),
                            titleTextStyle: TextStyle(color: Colors.white)),
                        textTheme: TextTheme(
                            bodyMedium: TextStyle(color: Colors.white)),
                        iconTheme: IconThemeData(color: Colors.white)),
                    home: TelegramView(),
                  );
                });
          }),
    );
  }
}
