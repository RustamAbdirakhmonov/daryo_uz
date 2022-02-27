import 'package:daryo_uz/model/news.dart';
import 'package:daryo_uz/screens/tezes_screen.dart';
import 'package:daryo_uz/widgets/news_widget.dart';
import 'package:flutter/material.dart';

class NewsScreen extends StatefulWidget {
  int type;
   NewsScreen({Key? key,required this.type}) : super(key: key);

  @override
  _NewsScreenState createState() => _NewsScreenState();
}

class _NewsScreenState extends State<NewsScreen> {
  List<News> news = [
    News(
        typeNews: 'Mahalliy',
        imageUrl:
            'https://storage.kun.uz/source/thumbnails/_medium/8/svb-pt04mJGkAx7aP2dk7vQ2Z-i5lJlR_medium.jpg',
        createdAt: DateTime.now(),
        visited: '550',
        description:
            "Evakuatsiya qilinayotgan O\‘zbekiston fuqarolaridan iborat birinchi guruh Lvovdan yo\‘lga chiqdi",
        tezes:
            'O‘zbekistonning Ukrainadagi elchixonasi xabariga ko‘ra, 26 fevral Toshkent vaqti bilan soat 20:30da 90dan ziyod O‘zbekiston fuqarolaridan iborat birinchi evakuatsiya guruhi Lvovdan “Krakovets” nazorat-o‘tkazish punkti yo‘nalishi bo‘ylab yo‘lga chiqqan.Chegarani kesib o‘tish O‘zbekistonning Polshadagi elchixonasi bilan hamkorlikda muvofiqlashtirilmoqda, deyiladi TIV rasmiy vakilining axborotida.\n Rasmiy xabarga O‘zbekiston fuqarolari Ukraina–Polsha chegarasi tomon yo‘l olgani aks etgan video ilova qilingan.'),
    News(
        typeNews: 'Jahon',
        imageUrl:
            'https://storage.kun.uz/source/8/2fi5qdkLl-U6aU3CenLY09737r5mUIhz.jpg',
        createdAt: DateTime.now(),
        visited: '2380',
        description: "Ukraina: Kiyev qamal qilindi ",
        tezes:
        'O‘zbekistonning Ukrainadagi elchixonasi xabariga ko‘ra, 26 fevral Toshkent vaqti bilan soat 20:30da 90dan ziyod O‘zbekiston fuqarolaridan iborat birinchi evakuatsiya guruhi Lvovdan “Krakovets” nazorat-o‘tkazish punkti yo‘nalishi bo‘ylab yo‘lga chiqqan.Chegarani kesib o‘tish O‘zbekistonning Polshadagi elchixonasi bilan hamkorlikda muvofiqlashtirilmoqda, deyiladi TIV rasmiy vakilining axborotida.\n Rasmiy xabarga O‘zbekiston fuqarolari Ukraina–Polsha chegarasi tomon yo‘l olgani aks etgan video ilova qilingan.'),


    News(
        typeNews: 'Jahon',
        imageUrl:
            'https://storage.kun.uz/source/8/2d4J60iKn4Iz6ic6G96vDSggMY7jGuZN.jpg',
        createdAt: DateTime.now(),
        visited: '4580',
        description:
            "«Bu insoniyatga va Rossiya qonunlariga qarshi jinoyat» – rossiyaliklar Ukrainaga bosqinni qoralamoqda ",
        tezes:
        'O‘zbekistonning Ukrainadagi elchixonasi xabariga ko‘ra, 26 fevral Toshkent vaqti bilan soat 20:30da 90dan ziyod O‘zbekiston fuqarolaridan iborat birinchi evakuatsiya guruhi Lvovdan “Krakovets” nazorat-o‘tkazish punkti yo‘nalishi bo‘ylab yo‘lga chiqqan.Chegarani kesib o‘tish O‘zbekistonning Polshadagi elchixonasi bilan hamkorlikda muvofiqlashtirilmoqda, deyiladi TIV rasmiy vakilining axborotida.\n Rasmiy xabarga O‘zbekiston fuqarolari Ukraina–Polsha chegarasi tomon yo‘l olgani aks etgan video ilova qilingan.'),

    News(
        typeNews: 'Mahalliy',
        imageUrl:
            'https://storage.kun.uz/source/8/bm86Nzj7HFj5VJWXgOhWwV29MaO1qoJC.jpg',
        createdAt: DateTime.now(),
        visited: '4580',
        description:
            "Ichki ishlar vaziri haydovchilar uchun jarima ballari tizimi qanday ishlashini ma’lum qildi ",
        tezes:
        'O‘zbekistonning Ukrainadagi elchixonasi xabariga ko‘ra, 26 fevral Toshkent vaqti bilan soat 20:30da 90dan ziyod O‘zbekiston fuqarolaridan iborat birinchi evakuatsiya guruhi Lvovdan “Krakovets” nazorat-o‘tkazish punkti yo‘nalishi bo‘ylab yo‘lga chiqqan.Chegarani kesib o‘tish O‘zbekistonning Polshadagi elchixonasi bilan hamkorlikda muvofiqlashtirilmoqda, deyiladi TIV rasmiy vakilining axborotida.\n Rasmiy xabarga O‘zbekiston fuqarolari Ukraina–Polsha chegarasi tomon yo‘l olgani aks etgan video ilova qilingan.'),

    News(
        typeNews: 'Jahon',
        imageUrl:
            'https://storage.kun.uz/source/8/In3W_LPf2NXyUU4a1bcQfBETUh0eEBle.jpg',
        createdAt: DateTime.now(),
        visited: '7584',
        description:
            "Yevropa Ittifoqi va Britaniya Putinga qarshi personal sanksiya e’lon qildi ",
  tezes:
  'O‘zbekistonning Ukrainadagi elchixonasi xabariga ko‘ra, 26 fevral Toshkent vaqti bilan soat 20:30da 90dan ziyod O‘zbekiston fuqarolaridan iborat birinchi evakuatsiya guruhi Lvovdan “Krakovets” nazorat-o‘tkazish punkti yo‘nalishi bo‘ylab yo‘lga chiqqan.Chegarani kesib o‘tish O‘zbekistonning Polshadagi elchixonasi bilan hamkorlikda muvofiqlashtirilmoqda, deyiladi TIV rasmiy vakilining axborotida.\n Rasmiy xabarga O‘zbekiston fuqarolari Ukraina–Polsha chegarasi tomon yo‘l olgani aks etgan video ilova qilingan.'),


    News(
        typeNews: 'Jahon',
        imageUrl:
            'https://storage.kun.uz/source/8/4Dq3Zv_F2vpHq3BiYBTpG31Wh8hjgrS1.jpg',
        createdAt: DateTime.now(),
        visited: '847',
        description:
            "Ukrainada shaharlararo transport tizimi to‘xtab qolgani evakuatsiyani murakkablashtirmoqda - O‘zbekiston TIV ",
  tezes:
  'O‘zbekistonning Ukrainadagi elchixonasi xabariga ko‘ra, 26 fevral Toshkent vaqti bilan soat 20:30da 90dan ziyod O‘zbekiston fuqarolaridan iborat birinchi evakuatsiya guruhi Lvovdan “Krakovets” nazorat-o‘tkazish punkti yo‘nalishi bo‘ylab yo‘lga chiqqan.Chegarani kesib o‘tish O‘zbekistonning Polshadagi elchixonasi bilan hamkorlikda muvofiqlashtirilmoqda, deyiladi TIV rasmiy vakilining axborotida.\n Rasmiy xabarga O‘zbekiston fuqarolari Ukraina–Polsha chegarasi tomon yo‘l olgani aks etgan video ilova qilingan.'),

    News(
        typeNews: 'Mahalliy',
        imageUrl:
            'https://storage.kun.uz/source/8/94dWGgN1VGhLmh4PAAJEF_ug3G-ZFg_S.jpg',
        createdAt: DateTime.now(),
        visited: '4580',
        description:
            "ANORBANK eksperti bank kartasini tanlashda nimalarga e’tibor berish kerakligi haqida maslahat berdi "
    ,
        tezes:
        'O‘zbekistonning Ukrainadagi elchixonasi xabariga ko‘ra, 26 fevral Toshkent vaqti bilan soat 20:30da 90dan ziyod O‘zbekiston fuqarolaridan iborat birinchi evakuatsiya guruhi Lvovdan “Krakovets” nazorat-o‘tkazish punkti yo‘nalishi bo‘ylab yo‘lga chiqqan.Chegarani kesib o‘tish O‘zbekistonning Polshadagi elchixonasi bilan hamkorlikda muvofiqlashtirilmoqda, deyiladi TIV rasmiy vakilining axborotida.\n Rasmiy xabarga O‘zbekiston fuqarolari Ukraina–Polsha chegarasi tomon yo‘l olgani aks etgan video ilova qilingan.'),

    News(
        typeNews: 'Jahon',
        imageUrl:
            'https://storage.kun.uz/source/8/8oUFIHJG3yvPzbt9L3hL_2igtftR0vXn.jpg',
        createdAt: DateTime.now(),
        visited: '18065',
        description:
            "Abramovich «Chelsi» boshqaruvini xayriya fondi vasiylariga topshirdi",
        tezes:
        'O‘zbekistonning Ukrainadagi elchixonasi xabariga ko‘ra, 26 fevral Toshkent vaqti bilan soat 20:30da 90dan ziyod O‘zbekiston fuqarolaridan iborat birinchi evakuatsiya guruhi Lvovdan “Krakovets” nazorat-o‘tkazish punkti yo‘nalishi bo‘ylab yo‘lga chiqqan.Chegarani kesib o‘tish O‘zbekistonning Polshadagi elchixonasi bilan hamkorlikda muvofiqlashtirilmoqda, deyiladi TIV rasmiy vakilining axborotida.\n Rasmiy xabarga O‘zbekiston fuqarolari Ukraina–Polsha chegarasi tomon yo‘l olgani aks etgan video ilova qilingan.'),

  ];

  List<News> get news1{
    return [...news];
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (ctx, i) {

        return InkWell(

          onTap: (){
            Navigator.of(context).pushNamed(TezesScreen.routeArgs,
                arguments: News(
                    typeNews: news[i].typeNews,
                    imageUrl: news[i].imageUrl,
                    createdAt: news[i].createdAt,
                    visited: news[i].visited,
                    description: news[i].description,
                    tezes: news[i].tezes,
                ) );
          },
          child: NewsWidget(

              typeNews: news[i].typeNews,
              imageUrl: news[i].imageUrl,
              createdAt: news[i].createdAt,
              visited: news[i].visited,
              description: news[i].description,

          ),

        );

      },

      itemCount:widget.type==1?news.length:(widget.type==2?news.length-4:news.length-6),
    );
  }}

