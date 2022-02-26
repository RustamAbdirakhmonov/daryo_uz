import 'package:daryo_uz/widgets/drawer_wiget.dart';
import 'package:flutter/material.dart';
class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.blue,),
      body: Container(),
      drawer: Drawer(

        child: DrawerWidget(),
      ),
    );
  }
}
