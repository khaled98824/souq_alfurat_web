import 'dart:async';

import 'package:flutter/material.dart';
import 'package:souq_alfurat_web/Auth/NewLogin.dart';
import 'package:souq_alfurat_web/models/PageRoute.dart';
// import 'package:souq_alfurat_web/ui/pages/Operations//AddNewAd.dart';
// import 'package:souq_alfurat_web/ui/pages/pages2/AllAds.dart';
import 'package:souq_alfurat_web/ui/pages/HomePage.dart';

// import 'package:souq_alfurat_web/ui/pages/Operations/SearchUi.dart';
// import 'package:souq_alfurat_web/ui/pages/Operations/SerchData.dart';
// import 'package:souq_alfurat_web/ui/pages/Operations/myAccount.dart';


class Mobile extends StatefulWidget {
  static const String id = "Mobile";

  @override
  _MobileState createState() => _MobileState();
}
String categoryName='الموبايل';
String department ;
class _MobileState extends State<Mobile> {
  var dropItemsMobile = [
    'إختر القسم الفرعي',
    'أبل',
    'هواوي',
    'سامسونج',
    'صيانة الموبايل',
    'إكسسوارات'
  ];
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: Text('الموبايل',textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 28,
                    fontFamily: 'AmiriQuran',
                    height: 1)),
          ),
          body:  Container(
            child: ListView(
              children: <Widget>[
                Padding(padding: EdgeInsets.only(top: 10)),
                Heade(),
                SizedBox(height: 20,),
                InkWell(
                  onTap: () {
                    // showSearch(
                    //     context: context,
                    //     delegate: SerchData(category: 'الموبايل'));
                  },
                  child: Padding(
                    padding: EdgeInsets.only(right: 50,left: 50),
                    child: Container(
                      height: 42,
                      width: 340,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40),
                          color: Colors.grey[350]),
                      child: Stack(
                        alignment: Alignment(0.3, 0),
                        children: <Widget>[
                          Text('!... إبحث في قسم الموبايل',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontFamily: 'AmiriQuran',
                                height: 1,
                              )),
                          Align(
                              alignment: Alignment(0.9, 0),
                              child: Icon(
                                Icons.search,
                                size: 30,
                              ))
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(padding: EdgeInsets.only(top: 100)),
                Container(
                  height:1,
                  width: MediaQuery.of(context).size.width - 8,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.red[900]),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 12, bottom:12),
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        department = dropItemsMobile[1];
                      });
                     // Navigator.push(context, BouncyPageRoute(widget: Ads(department:department,category:categoryName)));
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Icon(
                          Icons.arrow_back_ios,
                          size: 36,
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 26),
                          child: Text(
                            'أبل',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 30,
                                fontFamily: 'AmiriQuran',
                                height: 0.6),
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
                  padding: EdgeInsets.only(top: 12, bottom: 12),
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        department = dropItemsMobile[2];
                      });
                    //  Navigator.push(context, BouncyPageRoute(widget: Ads(department:department,category:categoryName)));
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Icon(
                          Icons.arrow_back_ios,
                          size: 36,
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 30),
                          child: Text(
                            'هواوي',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 30,
                                fontFamily: 'AmiriQuran',
                                height: 1),
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
                  padding: EdgeInsets.only(top:12, bottom:12),
                  child: InkWell(
                    onTap: () {
                      department = dropItemsMobile[3];
                    //  Navigator.push(context, BouncyPageRoute(widget: Ads(department:department,category:categoryName)));
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Icon(
                          Icons.arrow_back_ios,
                          size: 36,
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 16),
                          child: Text(
                            'سامسونج',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 30,
                                fontFamily: 'AmiriQuran',
                                height: 1),
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
                  padding: EdgeInsets.only(top: 12, bottom:12),
                  child: InkWell(
                    onTap: () {
                      department = dropItemsMobile[4];
                   //  Navigator.push(context, BouncyPageRoute(widget: Ads(department:department,category:categoryName)));
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Icon(
                          Icons.arrow_back_ios,
                          size: 36,
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 17),
                          child: Text(
                            'صيانة الموبايل',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 30,
                                fontFamily: 'AmiriQuran',
                                height: 0.6),
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
                  padding: EdgeInsets.only(top: 12, bottom:12),
                  child: InkWell(
                    onTap: () {
                      department = dropItemsMobile[5];
                    //  Navigator.push(context, BouncyPageRoute(widget: Ads(department:department,category:categoryName)));
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Icon(
                          Icons.arrow_back_ios,
                          size: 36,
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 30),
                          child: Text(
                            'إكسسوارات',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 30,
                                fontFamily: 'AmiriQuran',
                                height: 0.6),
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
