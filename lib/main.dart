import '/features/template/presentation/blocs/template_bloc/template_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '/features/skeleton/skeleton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

part 'theme.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      // ! Yeni bloc ekledikçe buraya eklemeyi unutma
      // ? Bazı durumlarda en üstte tanımlaman gerekmediğinde spesific bir cubitse en üstte tanımlamana gerek yok
      providers: [
        BlocProvider<TemplateBloc>(
          create: (context) => TemplateBloc(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
        locale: Locale('tr'),
        theme: AppTheme.lightTheme,
        home: Skeleton(),
      ),
    );
  }
}
