import 'package:flutter/material.dart';
import '../../../../features/skeleton/widgets/app_bar.dart';
import '../../../../features/skeleton/cubit/page_cubit.dart';
import '../../../../features/skeleton/widgets/bottom_navigation_bar.dart';
import '../../../../features/skeleton/widgets/page_navigation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Skeleton extends StatelessWidget {
  const Skeleton({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => PageCubit(),
      child: Scaffold(
        appBar: SkeletonAppBar(),
        bottomNavigationBar: CustomBottomNavigationBar(),
        body: NavigationWidget(),
      ),
    );
  }
}
