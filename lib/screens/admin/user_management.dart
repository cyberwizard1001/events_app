import 'package:events_app/widgets/admin_listview_widget.dart';
import 'package:flutter/material.dart';
import 'package:events_app/utils/constants.dart' as constants;
import 'package:events_app/widgets/appbar_back_button.dart';
import 'package:events_app/widgets/listview.dart';

class UserManagementPage extends StatefulWidget {
  const UserManagementPage({Key? key}) : super(key: key);

  @override
  _UserManagementPageState createState() => _UserManagementPageState();
}

class _UserManagementPageState extends State<UserManagementPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const AppBarBackButton('Users'),
        body: Container(
          decoration: constants.gradientDecoration,
          child: const AdminListViewWidget(),
        )
    );
  }
}
