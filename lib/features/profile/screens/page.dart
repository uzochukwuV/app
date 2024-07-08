import 'package:apk/utils/constants/colors.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../data/services/firebase_auth.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final FirebaseAuthMethods authMethods =
      FirebaseAuthMethods(FirebaseAuth.instance);

  void logout() async {
    print("logging out....");
    await authMethods.signOut(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        height: 844.h,
        width: 390.w,
        child: SingleChildScrollView(
          child: Column(children: [
            ListTile(
              trailing:
                  GestureDetector(onTap: logout, child: Icon(Icons.logout)),
              title: Text("Logout"),
            ),
            Divider(
              color: KColorsConstant.shadowlight,
            )
          ]),
        ),
      ),
    );
  }
}
