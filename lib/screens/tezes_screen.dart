import 'package:daryo_uz/screens/news_screen.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../model/news.dart';
class TezesScreen extends StatelessWidget {
  const TezesScreen({Key? key}) : super(key: key);

  static const routeArgs='/tezes';


  @override
  Widget build(BuildContext context) {
    final args= ModalRoute.of(context)!.settings.arguments as News;

    return Scaffold(
      appBar: AppBar(title: Text(args.typeNews),),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
             Container(
               height: MediaQuery.of(context).size.height*0.3,
               width: double.infinity,
               child: Image.network(args.imageUrl,fit: BoxFit.cover,),
             ),
             SizedBox(height: 5,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text('',),
                Row(children: [
                  Text(DateFormat('kk:mm').format(args.createdAt)+' | '+ DateFormat('dd-MM-yyyy').format(args.createdAt)+' |',style: TextStyle(color: Colors.grey),),
                  SizedBox(width: 5,),
                  Icon(Icons.remove_red_eye_outlined,color: Colors.blue,),
                  Text(args.visited,style: TextStyle(color: Colors.blue,fontWeight: FontWeight.w700),),
                  SizedBox(width: 10,)
                ],)
              ],
            ),
             SizedBox(height: 5,),
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.only(top: 4,bottom: 4,left: 10),
              child: Text(args.description,style: TextStyle(fontWeight: FontWeight.w700,fontSize: 20),),
            ),
            SizedBox(height: 4,),
            Container(
              padding: EdgeInsets.all(10),
              child: Text(args.tezes,style: TextStyle(fontWeight: FontWeight.w400,fontSize: 16),),

            ),
            SizedBox(height: 10,),
            SizedBox( // <-- SEE HERE
              width: double.infinity,
              
              child: TextField(
                cursorHeight: 24,
                decoration: InputDecoration(
                  labelText: 'Komment qoldiring',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            SizedBox(height: 10,),

            Container(
              padding: EdgeInsets.all(10),
              alignment: Alignment.centerRight,
              child: ElevatedButton(onPressed: (){}, child: Text('Ok'),style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.blue)),),
            )
          ],
        ),
      ),
    );
  }
}
