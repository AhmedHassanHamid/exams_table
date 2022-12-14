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
import 'package:easy_localization/easy_localization.dart';


//late LocalizationDelegate delegate;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  BlocOverrides.runZoned(
    () async {
      DioHelper.init();
      await CacheHelper.init();

      runApp(
        MyApp(
          appRouter: AppRouter(),
              ),
        
        // EasyLocalization(
        //   path: 'aassets/i18n',
        //   supportedLocales: [
        //     Locale('en'),
        //     Locale('ar'),
        //   ],
        //   fallbackLocale: Locale('ar'),
        //   child: 
        // )
        );
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
                  // localizationsDelegates: context.localizationDelegates,
                  // supportedLocales: context.supportedLocales,
                  // locale: context.locale,
                  debugShowCheckedModeBanner: false,
                  title: 'StudentTable',

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

