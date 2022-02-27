import 'package:daryo_uz/screens/news_screen.dart';
import 'package:daryo_uz/screens/search_screen.dart';
import 'package:daryo_uz/widgets/drawer_wiget.dart';
import 'package:flutter/material.dart';
class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,

      child: Scaffold(
        appBar: AppBar(
          title: Text('Daryo',style: TextStyle(fontSize: 24,fontWeight: FontWeight.w400),),
          backgroundColor: Colors.blue,

          bottom: PreferredSize(

              child: Material(
                color: Colors.white,
                elevation: 0,
                child: TabBar(
                    labelColor: Colors.blue,

                    isScrollable: true,
                    unselectedLabelColor: Colors.blue.withOpacity(0.8),
                    indicatorColor: Colors.blue,
                    tabs: [
                      Tab(
                        child: Text('SO\'NGI YANGILIKLAR'),
                      ),
                      Tab(
                        child: Text('ASOSIY YANGILIKLAR'),
                      ),
                      Tab(
                        child: Text('ENG KO\'P O\'QILGANLAR'),
                      ),

                    ]),
              ),
              preferredSize: Size.fromHeight(50.0)),
              actions: [
                IconButton(onPressed: (){
                 Navigator.of(context).pushNamed(SearchScreen.routeArgs);
                }, icon: Icon(Icons.search))
              ],
        ),
        drawer: Drawer(
          child: DrawerWidget(),
        ),
        body: TabBarView(
          children: [
            NewsScreen(type: 1,),
            NewsScreen(type: 2,),
            NewsScreen(type: 3,),
          ],
        ),


      ),
    );
  }
}
