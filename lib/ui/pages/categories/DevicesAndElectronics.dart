import 'dart:async';
import 'package:flutter/material.dart';
import 'package:souq_alfurat_web/Auth/NewLogin.dart';
import 'package:souq_alfurat_web/models/PageRoute.dart';
import 'package:souq_alfurat_web/ui/Serch/SerchData.dart';
import 'package:souq_alfurat_web/ui/pages/AllAds.dart';
// import 'package:souq_alfurat_web/ui/pages/Operations//AddNewAd.dart';
// import 'package:souq_alfurat_web/ui/pages/pages2/AllAds.dart';

import 'package:souq_alfurat_web/ui/pages/HomePage.dart';
// import 'package:souq_alfurat_web/ui/pages/Operations/SearchUi.dart';
// import 'package:souq_alfurat_web/ui/pages/Operations/SerchData.dart';
// import 'package:souq_alfurat_web/ui/pages/Operations/myAccount.dart';


class DevicesAndElectronics extends StatefulWidget {
  static const String id = "DevicesAndElectronics";

  @override
  _DevicesAndElectronicsState createState() => _DevicesAndElectronicsState();
}
String categoryName;
String department ;
class _DevicesAndElectronicsState extends State<DevicesAndElectronics> {
  var dropItemsDevicesAndElectronics = [
    'إختر القسم الفرعي',
    'لابتوب - كمبيوتر',
    'تلفزيون شاشات',
    "كاميرات - تصوير",
    "طابعات",
    "راوترات - أجهزة إنترنت",
    "أخرى"
  ];
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: Text('أجهزة - إلكترونيات',textAlign: TextAlign.center,
                style: TextStyle(
        fontSize: 24,
        fontFamily: 'AmiriQuran',
        )),
          ),
          body:  Container(
            child: ListView(
              children: <Widget>[
                Padding(padding: EdgeInsets.only(top: 10)),
                Heade(),
                SizedBox(height: 12,),
                InkWell(
                  onTap: () {
                    showSearch(
                        context: context,
                        delegate: SerchData(category: 'أجهزة - إلكترونيات'));
                  },
                  child: Padding(
                    padding: EdgeInsets.only(right: 12,left: 30),
                    child: Container(
                      height: 36,
                      width: 330,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40),
                          color: Colors.grey[350]),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text('!... إبحث في قسم أجهزة - إلكترونيات ',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontFamily: 'AmiriQuran',
                              )),
                          SizedBox(width: 6,),
                          Icon(
                            Icons.search,
                            size: 28,
                          ),
                          SizedBox(width: 5,)
                        ],
                      )
                    ),
                  ),
                ),
                Padding(padding: EdgeInsets.only(top: 50)),
                Container(
                  height:1,
                  width: MediaQuery.of(context).size.width - 8,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.red[900]),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 0, bottom:0),
                  child: InkWell(
                    onTap: () {
                      setState(() {
                         department = dropItemsDevicesAndElectronics[1];
                        categoryName='أجهزة - إلكترونيات';
                      });
                      Navigator.push(context, BouncyPageRoute(widget: Ads(department:department,category:categoryName)));
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Icon(
                          Icons.arrow_back_ios,
                          size: 34,

                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 13),
                          child: Text(
                            'لابتوب - كمبيوتر',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 28,
                                fontFamily: 'AmiriQuran',
                                //height: 0.6
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 1,
                  width: MediaQuery.of(context).size.width - 8,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.red[900]),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 0, bottom: 0),
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        department = dropItemsDevicesAndElectronics[2];
                        categoryName='أجهزة - إلكترونيات';
                      });
                     Navigator.push(context, BouncyPageRoute(widget: Ads(department:department,category:categoryName)));
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Icon(
                          Icons.arrow_back_ios,
                          size: 34,
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 15),
                          child: Text(
                            'تلفزيون شاشات',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 28,
                                fontFamily: 'AmiriQuran',
                                //height: 1
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  height:1,
                  width: MediaQuery.of(context).size.width - 8,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.red[900]),
                ),
                Padding(
                  padding: EdgeInsets.only(top:0 ,bottom:0),
                  child: InkWell(
                    onTap: () {
                      department = dropItemsDevicesAndElectronics[3];
                      categoryName='أجهزة - إلكترونيات';
                     Navigator.push(context, BouncyPageRoute(widget: Ads(department:department,category:categoryName)));
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Icon(
                          Icons.arrow_back_ios,
                          size: 34,
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 5),
                          child: Text(
                            'كاميرات - تصوير',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 28,
                                fontFamily: 'AmiriQuran',
                               // height: 1

                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  height:1,
                  width: MediaQuery.of(context).size.width - 8,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.red[900]),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 0, bottom:0),
                  child: InkWell(
                    onTap: () {
                      department = dropItemsDevicesAndElectronics[4];
                      categoryName='أجهزة - إلكترونيات';
                     Navigator.push(context, BouncyPageRoute(widget: Ads(department:department,category:categoryName)));
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Icon(
                          Icons.arrow_back_ios,
                          size: 34,
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 17),
                          child: Text(
                            'طابعات',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 28,
                                fontFamily: 'AmiriQuran',
                                //height: 0.6
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  height:1,
                  width: MediaQuery.of(context).size.width - 8,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.red[900]),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 0, bottom:0),
                  child: InkWell(
                    onTap: () {
                      department = dropItemsDevicesAndElectronics[5];
                      categoryName='أجهزة - إلكترونيات';
                     Navigator.push(context, BouncyPageRoute(widget: Ads(department:department,category:categoryName)));
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Icon(
                          Icons.arrow_back_ios,
                          size: 34,
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 30),
                          child: Text(
                            'راوترات - أجهزة إنترنت',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 28,
                                fontFamily: 'AmiriQuran',
                                //height: 0.6
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  height:1,
                  width: MediaQuery.of(context).size.width - 8,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.red[900]),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 0, bottom:0),
                  child: InkWell(
                    onTap: () {
                      department = dropItemsDevicesAndElectronics[6];
                      categoryName='أجهزة - إلكترونيات';
                     Navigator.push(context, BouncyPageRoute(widget: Ads(department:department,category:categoryName)));
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Icon(
                          Icons.arrow_back_ios,
                          size: 34,
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 17),
                          child: Text(
                            'أخرى',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 28,
                                fontFamily: 'AmiriQuran',
                               // height: 0.6
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  height:1,
                  width: MediaQuery.of(context).size.width - 8,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.red[900]),
                ),
              ],
            ),
          ),

        ),
      ],
    );
  }
}
