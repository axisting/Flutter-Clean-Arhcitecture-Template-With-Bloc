import '../../../../features/skeleton/cubit/page_cubit.dart';
import 'package:flutter/material.dart';
import '../../../../core/extensions/l10n_extension.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NavigationWidget extends StatelessWidget {
  const NavigationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PageCubit, int>(
      builder: (context, state) {
        switch (state) {
          case 0:
            return const HomePageTemplate();
          case 1:
            return const ExplorePageTemplate();
          case 2:
            return const ProfilePageTemplate();
          default:
            return const HomePageTemplate();
        }
      },
    );
  }
}

// ! TASLAK SAYFALARI SİL ! ! !
class ProfilePageTemplate extends StatelessWidget {
  const ProfilePageTemplate({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(child: Text(context.translate.profile));
  }
}

class ExplorePageTemplate extends StatelessWidget {
  const ExplorePageTemplate({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(child: Text(context.translate.explore));
  }
}

class HomePageTemplate extends StatelessWidget {
  const HomePageTemplate({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(child: Text(context.translate.home));
  }
}
