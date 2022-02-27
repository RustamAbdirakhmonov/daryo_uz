import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
class NewsWidget extends StatelessWidget {

  String typeNews;
  String imageUrl;
  DateTime createdAt;
  String visited;
  String description;
  NewsWidget(
      {Key? key, required this.typeNews,
        required this.imageUrl,
        required this.createdAt,
        required this.visited,
        required this.description,
      }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(

      padding: EdgeInsets.symmetric(horizontal: 10,vertical: 4),
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(typeNews,style: TextStyle(color: Colors.blue,fontWeight: FontWeight.w700),),
              Row(children: [
                Text(DateFormat('kk:mm').format(createdAt)+' | '+ DateFormat('dd-MM-yyyy').format(createdAt)+' |',style: TextStyle(color: Colors.grey),),
                SizedBox(width: 5,),
                Icon(Icons.remove_red_eye_outlined,color: Colors.blue,),
                Text(visited,style: TextStyle(color: Colors.blue,fontWeight: FontWeight.w700),),
              ],)
            ],
          ),
          Row(
            children: [
             Expanded(
                 flex: 2,
                 child: Container(

                   height: 90,
                   child: Image.network(imageUrl,fit: BoxFit.cover,),)),
              Expanded(
                flex: 3,
                  child: Container(
                      alignment: Alignment.centerLeft,
                      padding: EdgeInsets.only(left: 15),
                      child: Text(description,style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.w700),)))
            ],
          ),
          Divider(),

        ],
      ),
    );
  }
}
