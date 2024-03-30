import 'package:flutter/material.dart';

class SkeletonAppBar extends StatelessWidget implements PreferredSizeWidget {
  const SkeletonAppBar({
    super.key,
  });

  @override
  // TODO: implement preferredSize
  Size get preferredSize => AppBar().preferredSize;

  @override
  Widget build(BuildContext context) {
    return AppBar(title: const Text("A x I Template"));
  }
}
