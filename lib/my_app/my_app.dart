import 'package:flutter/material.dart';
import 'package:my_qauran_app/provider/settings_provider.dart';
import 'package:provider/provider.dart';
import '../config/theme/theme.dart';
import '../core/routes_manger.dart';
import '../presentation/home/home_screen.dart';
import '../presentation/home/tabs/hadith_tab/hadith_screen/hadith_screen.dart';
import '../presentation/home/tabs/quran_tab/quran_screen/quran_screen.dart';
import '../presentation/splash/splash_screen.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    var myProvider = Provider.of<SettingProvider>(context);
    return MaterialApp(
        theme: MyTheme.light ,
        darkTheme: MyTheme.dark,
        themeMode: myProvider.currentTheme ,
        routes: {
          RoutesManger.homeScreen: (_) => const HomeScreen(),
          RoutesManger.splashScreen: (_) => const SplashScreen(),
          RoutesManger.quranScreen: (_) => QuranScreen(),
          RoutesManger.hadithScreen: (_) => const HadithScreen()
        },
        initialRoute: RoutesManger.splashScreen,
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales:  const [
          Locale('ar'),
          Locale('en')
      ],
      locale: Locale(myProvider.currentLocale),
    );
  }
}
