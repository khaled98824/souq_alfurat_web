import 'dart:async';
import 'package:flutter/material.dart';
import 'package:souq_alfurat_web/Auth/NewLogin.dart';
import 'package:souq_alfurat_web/models/PageRoute.dart';
import 'package:souq_alfurat_web/ui/pages/AllAds.dart';
// import 'package:souq_alfurat_web/ui/pages/Operations//AddNewAd.dart';
// import 'package:souq_alfurat_web/ui/pages/pages2/AllAds.dart';
import 'package:souq_alfurat_web/ui/pages/HomePage.dart';
// import 'package:souq_alfurat_web/ui/pages/Operations/SearchUi.dart';
// import 'package:souq_alfurat_web/ui/pages/Operations/SerchData.dart';
// import 'package:souq_alfurat_web/ui/pages/Operations/myAccount.dart';

class CarsAndMotorCycles extends StatefulWidget {
  static const String id = "CarsAndMotorCycles";

  @override
  _CarsAndMotorCyclesState createState() => _CarsAndMotorCyclesState();
}
String categoryName;
String department ;
class _CarsAndMotorCyclesState extends State<CarsAndMotorCycles> {
  var dropItemsCars = [
    'إختر القسم الفرعي',
    'سيارات للبيع',
    'سيارات للإيجار',
    "قطع غيار",
    "دراجات نارية للبيع"
  ];
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: Text('السيارات - الدراجات',textAlign: TextAlign.center,
              style: TextStyle(
        fontSize: 26,
        fontFamily: 'AmiriQuran',
        //height: 0.6
              ),),
          ),
          body: Container(
            child: ListView(
              children: <Widget>[
                Padding(padding: EdgeInsets.only(top: 10)),
                Heade(),
                SizedBox(height: 12,),
                InkWell(
                  onTap: () {
                    // showSearch(
                    //     context: context,
                    //     delegate: SerchData(category: 'السيارات - الدراجات'));
                  },
                  child: Padding(
                    padding: EdgeInsets.only(right: 10,left: 30),
                    child: Container(
                      height: 36,
                      width: 330,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40),
                          color: Colors.grey[350]),
                      child: Stack(
                        alignment: Alignment(screenSizeWidth2<412?-0.4:0.1, 0),
                        children: <Widget>[
                          Text('!... إبحث  في قسم السيارات - الدراجات ',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontFamily: 'AmiriQuran',

                              )),
                          Align(
                              alignment: Alignment(0.9, 0),
                              child: Icon(
                                Icons.search,
                                size: 28,
                              ))
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(padding: EdgeInsets.only(top: 144)),
                Container(
                  height:1,
                  width: MediaQuery.of(context).size.width - 8,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.red[900]),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      department = dropItemsCars[1];
                      categoryName='السيارات - الدراجات';
                    });

                   Navigator.push(context, BouncyPageRoute(widget: Ads(department:department,category:categoryName)));
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Icon(
                        Icons.arrow_back_ios,
                        size: 32,
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 8),
                        child: Text(
                          'سيارات للبيع',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 26,
                              fontFamily: 'AmiriQuran',
                              //height: 0.6
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 1,
                  width: MediaQuery.of(context).size.width - 8,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.red[900]),
                ),
                InkWell(
                  onTap: () {
                    department = dropItemsCars[2];
                    categoryName='السيارات - الدراجات';
                   Navigator.push(context, BouncyPageRoute(widget: Ads(department:department,category:categoryName)));
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Icon(
                        Icons.arrow_back_ios,
                        size: 30,
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 8),
                        child: Text(
                          'سيارات للإيجار',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 26,
                              fontFamily: 'AmiriQuran',
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height:1,
                  width: MediaQuery.of(context).size.width - 8,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.red[900]),
                ),
                InkWell(
                  onTap: () {
                    department = dropItemsCars[4];
                    categoryName='السيارات - الدراجات';
                   Navigator.push(context, BouncyPageRoute(widget: Ads(department:department,category:categoryName)));
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Icon(
                        Icons.arrow_back_ios,
                        size: 30,
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 22),
                        child: Text(
                          'دراجات نارية',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 28,
                              fontFamily: 'AmiriQuran',
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height:1,
                  width: MediaQuery.of(context).size.width - 8,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.red[900]),
                ),
                InkWell(
                  onTap: () {
                    department = dropItemsCars[3];
                    categoryName='السيارات - الدراجات';
                   Navigator.push(context, BouncyPageRoute(widget: Ads(department:department,category:categoryName)));
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Icon(
                        Icons.arrow_back_ios,
                        size: 30,
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 17),
                        child: Text(
                          'قطع غيار السيارات',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 26,
                              fontFamily: 'AmiriQuran',
                          ),
                        ),
                      ),
                    ],
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
        )
      ],
    );
  }
}
