import 'package:flutter/material.dart';
import 'package:task_ui_building/screen/components/body.dart';
import 'package:task_ui_building/size_config.dart';
import 'package:task_ui_building/theme/pallete.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return const Scaffold(
      body: Body(),
    );
  }
}

class UserStatus{
  final int value;
  final String name;

  UserStatus({
    required this.value,
    required this.name
  });
}
final userStatus = [
  UserStatus(
      value: 2,
      name: 'Posts'
  ),
  UserStatus(
      value: 1,
      name: 'Followers'
  ),
  UserStatus(
      value: 2,
      name: 'Following'
  ),
];
