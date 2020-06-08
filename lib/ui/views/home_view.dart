import 'dart:async';
import 'package:flutter/material.dart';
import 'package:journal/constants/drawer_items.dart';
import 'package:journal/constants/keys.dart';
import 'package:journal/constants/strings.dart';
import 'package:journal/enums/fragments.dart';
import 'package:journal/models/user.dart';
import 'package:journal/services/auth_service.dart';
import 'package:journal/ui/views/sign_in/home_frag.dart';
import 'package:journal/ui/views/test_frag.dart';
import 'package:journal/ui/widgets/custom_drawer.dart';
import 'package:journal/ui/widgets/platform_alert_dialog.dart';
import 'package:journal/ui/widgets/platform_exception_alert_dialog.dart';
import 'package:provider/provider.dart';
import 'package:flutter/services.dart';

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int _selectedIndex = 0;
  DrawerItem _currentItem = DrawerItems.main[0];

  Future<void> _signOut(BuildContext context) async {
    try {
      final AuthService auth = Provider.of<AuthService>(context);
      await auth.signOut();
    } on PlatformException catch (e) {
      await PlatformExceptionAlertDialog(
        title: Strings.logoutFailed,
        exception: e,
      ).show(context);
    }
  }

  Future<void> _confirmSignOut(BuildContext context) async {
    final bool didRequestSignOut = await PlatformAlertDialog(
      title: Strings.logout,
      content: Strings.logoutAreYouSure,
      cancelActionText: Strings.cancel,
      defaultActionText: Strings.logout,
    ).show(context);
    if (didRequestSignOut == true) {
      _signOut(context);
    }
  }

  Widget _buildBody(User user) {
    switch (this._currentItem.id) {
      case Fragments.HomeFrag:
        return HomeFrag(
          user: user,
        );
      case Fragments.TestFrag:
        return TestFrag();
      default:
        return HomeFrag();
    }
  }

  void _onNavigationSelected(int newIdx) {
    setState(() {
      _selectedIndex = newIdx;
      _currentItem = DrawerItems.main[newIdx];
    });
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    final User user = Provider.of<User>(context);
    return ChangeNotifierProvider<ValueNotifier<Fragments>>(
      builder: (context) => ValueNotifier<Fragments>(Fragments.HomeFrag),
      child: Consumer<ValueNotifier<Fragments>>(
        builder: (context, fragValue, child) {
          return Scaffold(
            drawer: CustomDrawer(
              selectedIndex: _selectedIndex,
              onNavigationSelected: (int idx) =>
                  this._onNavigationSelected(idx),
            ),
            appBar: AppBar(
              title: Text(_currentItem.title),
              actions: <Widget>[
                FlatButton(
                  key: Key(Keys.logout),
                  child: Text(
                    Strings.logout,
                    style: TextStyle(
                      fontSize: 18.0,
                    ),
                  ),
                  onPressed: () => _confirmSignOut(context),
                ),
              ],
            ),
            body: _buildBody(user),
          );
        },
      ),
    );
  }
}
