import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:sizer/sizer.dart';
import 'package:student_table_task/business_logic/bloc_observer.dart';
import 'package:student_table_task/business_logic/global_cubit/global_cubit.dart';
import 'package:student_table_task/data/local/cache_helper.dart';
import 'package:student_table_task/data/remote/dio_helper.dart';
import 'package:student_table_task/presentation/router/app_router.dart';
import 'package:student_table_task/presentation/styles/colors.dart';


//late LocalizationDelegate delegate;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  BlocOverrides.runZoned(
    () async {
      DioHelper.init();
      await CacheHelper.init();

      final locale =
          CacheHelper.getDataFromSharedPreference(key: 'language') ?? "ar";

      // delegate = await LocalizationDelegate.create(
      //   fallbackLocale: locale,
      //   supportedLocales: ['ar', 'en'],
      // );
      //await delegate.changeLocale(Locale(locale));

      runApp(MyApp(
        appRouter: AppRouter(),
      ));
    },
    blocObserver: MyBlocObserver(),
  );
}

class MyApp extends StatefulWidget {
  final AppRouter appRouter;

  const MyApp({
    required this.appRouter,
    Key? key,
  }) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();

    //Intl.defaultLocale = delegate.currentLocale.languageCode;

    // delegate.onLocaleChanged = (Locale value) async {
    //   try {
    //     setState(() {//
    //       Intl.defaultLocale = value.languageCode;
    //     });
    //   } catch (e) {
    //     showToast(e.toString());
    //   }
    // };
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: ((context) => GlobalCubit()..getTableData()),
        ),
      ],
      child: BlocConsumer<GlobalCubit, GlobalState>(
        listener: (context, state) {},
        builder: (context, state) {
          return Sizer(
            builder: (context, orientation, deviceType) {
              return LayoutBuilder(builder: (context, constraints) {
                return MaterialApp(
                  debugShowCheckedModeBanner: false,
                  title: 'StudentTable',
                  localizationsDelegates: [
                    GlobalCupertinoLocalizations.delegate,
                    DefaultCupertinoLocalizations.delegate,
                    GlobalMaterialLocalizations.delegate,
                    GlobalWidgetsLocalizations.delegate,
                    //delegate,
                  ],

                  // locale: delegate.currentLocale,
                  // supportedLocales: delegate.supportedLocales,
                  onGenerateRoute: widget.appRouter.onGenerateRoute,
                  theme: ThemeData(
                    fontFamily: 'cairo',
                    //scaffoldBackgroundColor: AppColors.white,
                    appBarTheme: const AppBarTheme(
                      elevation: 0.0,
                      backgroundColor: AppColor.blue,
                      centerTitle: true,
                      systemOverlayStyle: SystemUiOverlayStyle(
                        //statusBarColor: AppColors.transparent,
                        statusBarIconBrightness: Brightness.light,
                      ),
                    ),
                  ),
                );
              });

            },
          );
        },
      ),
    );
  }
}

