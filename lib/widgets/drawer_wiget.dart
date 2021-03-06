import 'package:flutter/material.dart';

class DrawerWidget extends StatefulWidget {
  const DrawerWidget({Key? key}) : super(key: key);

  @override
  State<DrawerWidget> createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {
  bool isLatin = true;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        DrawerHeader(
          margin: EdgeInsets.all(0),
          padding: EdgeInsets.all(0),
          child: Container(
            padding: EdgeInsets.only(top: 15, left: 10, right: 10, bottom: 10),
            color: Colors.blue,
            width: double.infinity,
            height: 200,
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Daryo',
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 35,
                          color: Colors.white),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.46,
                      height: 35,
                      padding: EdgeInsets.all(0),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(38),
                          border: Border.all(width: 1, color: Colors.white)),
                      child: Row(
                        children: <Widget>[
                          Container(
                            child: TextButton(
                              onPressed: () {
                                setState(() {
                                  isLatin = true;
                                });
                              },
                              child: Text(
                                'LOTINCHA',
                                style: isLatin == true
                                    ? TextStyle(
                                        color: Colors.blue, fontSize: 14)
                                    : TextStyle(
                                        color: Colors.white, fontSize: 14),
                              ),
                            ),
                            width: MediaQuery.of(context).size.width * 0.229,
                            decoration: BoxDecoration(
                              color:
                                  isLatin == true ? Colors.white : Colors.blue,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(38),
                                  bottomLeft: Radius.circular(38)),
                            ),
                          ),
                          Container(
                            child: TextButton(
                              onPressed: () {
                                setState(() {
                                  isLatin = false;
                                });
                              },
                              child: Text(
                                '??????????????',
                                style: isLatin == false
                                    ? TextStyle(
                                        color: Colors.blue, fontSize: 14)
                                    : TextStyle(
                                        color: Colors.white, fontSize: 14),
                              ),
                            ),
                            width: MediaQuery.of(context).size.width * 0.225,
                            decoration: BoxDecoration(
                              color:
                                  isLatin == false ? Colors.white : Colors.blue,
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(38),
                                  bottomRight: Radius.circular(38)),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                SizedBox(height: 40,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(isLatin?'Toshkent':'??????????????',style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.w400,),),
                    Container(
                      child: Row(
                        children: <Widget>[
                          Icon(Icons.cloud,color: Colors.white,),

                          Text('15???',style: TextStyle(color: Colors.white,fontSize: 18),textAlign: TextAlign.end,)
                        ],
                      ),
                    )

                  ],
                ),
                Divider(color: Colors.white,height: 1,),
                SizedBox(height: 5,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Row(
                      children: [
                        Icon(Icons.monetization_on_outlined,color: Colors.white,size: 22),
                        SizedBox(width: 4,),
                        Text('10850.85',style: TextStyle(color: Colors.white,fontSize: 16),),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.euro_outlined,color: Colors.white,size: 22),
                        SizedBox(width: 4,),
                        Text('12165.97',style: TextStyle(color: Colors.white,fontSize: 16),),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.currency_ruble_rounded,color: Colors.white,size: 22),
                        SizedBox(width: 4,),
                        Text('128.7',style: TextStyle(color: Colors.white,fontSize: 16),),
                      ],
                    ),

                  ],
                )
              ],
            ),
          ),
        ),
        InkWell(
          onTap: (){},
          child: Container(
            alignment: Alignment.centerLeft,
            width: double.infinity,
            height: 40,
            color: Colors.amber.withOpacity(0.4),
            padding: EdgeInsets.only(left: 10),
            child: Text(isLatin?'Qo\'llanma ekranini ko\'rsatish':'???????????????? ???????????????? ????????????????',style: TextStyle(fontWeight: FontWeight.w700),),
          ),
        ),
        InkWell(
          onTap: (){},
          child: Container(
            width: double.infinity,
            alignment: Alignment.centerLeft,
            height: 40,
            color: Colors.grey.withOpacity(0.3),
            padding: EdgeInsets.only(left: 10),
            child: Text(isLatin?'So\'ngi yangiliklar':'?????????? ??????????????????????',style: TextStyle(fontWeight: FontWeight.w700,color: Colors.blue)),
          ),
        ),
        InkWell(
          onTap: (){},
          child: Container(
            width: double.infinity,
            alignment: Alignment.centerLeft,
            height: 40,
            padding: EdgeInsets.only(left: 10),
            child: Text(isLatin?'Mahalliy':'????????????????',style: TextStyle(fontWeight: FontWeight.w700)),
          ),
        ),
        InkWell(
          onTap: (){},
          child: Container(
            width: double.infinity,
            alignment: Alignment.centerLeft,
            height: 40,
            padding: EdgeInsets.only(left: 10),
            child: Text(isLatin?'Dunyo':'????????',style: TextStyle(fontWeight: FontWeight.w700)),
          ),

        ),
        InkWell(
          onTap: (){},
          child: Container(
            width: double.infinity,
            alignment: Alignment.centerLeft,
            height: 40,
            padding: EdgeInsets.only(left: 10),
            child: Text(isLatin?'Texnologiyalar':'??????????????????????????',style: TextStyle(fontWeight: FontWeight.w700)),
          ),
        ),
        Divider(),
        InkWell(
          onTap: (){},
          child: Container(
            width: double.infinity,
            alignment: Alignment.centerLeft,
            height: 60,
            padding: EdgeInsets.only(left: 10),
            child: Text(isLatin?'Tanlangan habarlar':'?????????????????? ????????????????',style: TextStyle(fontWeight: FontWeight.w700,color: Colors.green)),
          ),
        ),
        Divider(),
        InkWell(
          onTap: (){},
          child: Container(
            width: double.infinity,
            alignment: Alignment.centerLeft,
            height: 40,
            padding: EdgeInsets.only(left: 10),
            child: Text(isLatin?'Madaniyat':'????????????????',style: TextStyle(fontWeight: FontWeight.w700)),
          ),
        ),
        InkWell(
          onTap: (){},
          child: Container(
            width: double.infinity,
            alignment: Alignment.centerLeft,
            height: 40,
            padding: EdgeInsets.only(left: 10),
            child: Text(isLatin?'Avto':'????????',style: TextStyle(fontWeight: FontWeight.w700)),
          ),
        ),
        InkWell(
          onTap: (){},
          child: Container(
            width: double.infinity,
            alignment: Alignment.centerLeft,
            height: 40,
            padding: EdgeInsets.only(left: 10),
            child: Text(isLatin?'Sport':'??????????',style: TextStyle(fontWeight: FontWeight.w700)),
          ),
        ),
        InkWell(
          onTap: (){},
          child: Container(
            width: double.infinity,
            alignment: Alignment.centerLeft,
            height: 40,
            padding: EdgeInsets.only(left: 10),
            child: Text(isLatin?'Foto':'????????',style: TextStyle(fontWeight: FontWeight.w700)),
          ),
        ),
        InkWell(
          onTap: (){},
          child: Container(
            width: double.infinity,
            alignment: Alignment.centerLeft,
            height: 40,
            padding: EdgeInsets.only(left: 10),
            child: Text(isLatin?'LifeStyle':'????????????????????',style: TextStyle(fontWeight: FontWeight.w700)),
          ),
        ),
        InkWell(
          onTap: (){},
          child: Container(
            width: double.infinity,
            alignment: Alignment.centerLeft,
            height: 40,
            padding: EdgeInsets.only(left: 10),
            child: Text(isLatin?'Kommunistlar':'????????????????????????',style: TextStyle(fontWeight: FontWeight.w700)),
          ),
        ),
        InkWell(
          onTap: (){},
          child: Container(
            width: double.infinity,
            alignment: Alignment.centerLeft,
            height: 40,
            color: Colors.grey.withOpacity(0.3),
            padding: EdgeInsets.only(left: 10),
            child: Text(isLatin?'Afisha':'??????????',style: TextStyle(fontWeight: FontWeight.w700)),
          ),
        ),
        InkWell(
          onTap: (){},
          child: Container(
            width: double.infinity,
            alignment: Alignment.centerLeft,
            height: 40,
            color: Colors.grey.withOpacity(0.3),
            padding: EdgeInsets.only(left: 10),
            child: Text(isLatin?'Valyutalar kursi':'?????????????????? ??????????',style: TextStyle(fontWeight: FontWeight.w700)),
          ),
        ),
        InkWell(
          onTap: (){},
          child: Container(
            width: double.infinity,
            alignment: Alignment.centerLeft,
            height: 40,
            color: Colors.grey.withOpacity(0.3),
            padding: EdgeInsets.only(left: 10),
            child: Text(isLatin?'Ob-Havo':'????-????????',style: TextStyle(fontWeight: FontWeight.w700)),
          ),
        ),
        InkWell(
          onTap: (){},
          child: Container(
            width: double.infinity,
            alignment: Alignment.centerLeft,
            height: 40,
            color: Colors.grey.withOpacity(0.3),
            padding: EdgeInsets.only(left: 10),
            child: Text(isLatin?'Foydalanish shartlari':'?????????????????? ????????????????',style: TextStyle(fontWeight: FontWeight.w700)),
          ),
        ),
        InkWell(
          onTap: (){},
          child: Container(
            width: double.infinity,
            alignment: Alignment.centerLeft,
            height: 40,
            color: Colors.grey.withOpacity(0.3),
            padding: EdgeInsets.only(left: 10),
            child: Text(isLatin?'<Daryo haqida>':'<????????> ????????????',style: TextStyle(fontWeight: FontWeight.w700)),
          ),
        ),
        InkWell(
          onTap: (){},
          child: Container(
            width: double.infinity,
            alignment: Alignment.centerLeft,
            height: 40,
            color: Colors.grey.withOpacity(0.3),
            padding: EdgeInsets.only(left: 10),
            child: Text(isLatin?'Sozlashlar':'??????????????????',style: TextStyle(fontWeight: FontWeight.w700)),
          ),
        ),


      ],
    );
  }
}
