import 'package:flutter/material.dart';

class DrawerListTile extends StatelessWidget {
  final String title;
  final Icon icon;
  final VoidCallback onPress;
  const DrawerListTile({
    super.key,
    required this.title,
    required this.icon,
    required this.onPress,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.only(left: 30),
      title: Text(title),
      leading: icon,
      onTap: onPress,
    );
  }
}
