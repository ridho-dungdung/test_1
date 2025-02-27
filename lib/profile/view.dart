import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'logic.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
        init: ProfileLogic(),
        builder: (ctr) => Container(
          child: Center(child: Text('Profile',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),),
        )
    );
  }
}
