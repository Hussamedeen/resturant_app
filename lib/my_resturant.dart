import 'package:flutter/material.dart';

class MyResturant extends StatefulWidget {
  @override
  _MyResturantState createState() => _MyResturantState();
}

class _MyResturantState extends State<MyResturant> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: 10,
              ),
              _mySearchBox(),
              SizedBox(
                height: 10,
              ),
              _myTitle(),
              _mealsList(),
              _allMeals(),
            ],
          ),
        ),
      ),
    );
  }
  Widget _mySearchBox() {
    return SizedBox(
      width: 400.0,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(50.0),
        ),
        child: Row(
          children: <Widget>[
            Icon(
              Icons.search,
              size: 40.0,
            ),
            Expanded(
              child: TextField(
                  decoration:
                      InputDecoration.collapsed(hintText: "البحث من هنا")),
            ),
          ],
        ),
      ),
    );
  }
  Widget _myTitle() {
    return SizedBox(
      child: Container(
        decoration: BoxDecoration(
          border: Border(right: BorderSide(
            width: 10.0,
            color: Colors.red,
          ) ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              " الوجبات الشائعة",
              style: TextStyle(
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold
              ),
            ),
            Text(
              "  هذا الاسبوع",
              style: TextStyle(
                  fontSize: 15.0,
                fontWeight: FontWeight.bold
              ),
            ),
          ],
        ),
      ),
    );
  }
Widget _mealsList(){
    return Container(
      width: 400,
      height: 100,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[ 
          _getMeal("مقلوبة", "Assets/images/magloba.jpeg"),
          _getMeal("مسخن", "Assets/images/mosakhan.jpg"),
          _getMeal("كبسة دجاج", "Assets/images/kabsa.jpg"),

        ],
      ),
    );
}
Widget _getMeal(String mealName, String fileImage){
    return SizedBox(
      width: 200,
      child: Card(
        child: Row(
          children: <Widget>[
            CircleAvatar(
              backgroundImage: AssetImage(fileImage),
              radius: 35,
            ),
            SizedBox(width: 20,),
            Text(mealName , style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),),
          ],
        ),
      ),
    );
}
Widget _allMeals(){
    return SizedBox(
      child: Container(
        height: 400,
        width: 400,
        child: ListView(
          children: <Widget>[
            _mealList2("10 رمضان", "مقلوبة", "Assets/images/magloba.jpeg"),
            SizedBox(height: 10,),
            _mealList2("5 شعبان", "مسخن", "Assets/images/mosakhan.jpg"),
            _mealList2("1 ذو الحجة", "كبسة", "Assets/images/kabsa.jpg"),
          ],
        ),
      ),
    );
}
Widget _mealList2(String dateMeal,String mealName,String fileImage){
    return SizedBox(
//      width: 400,
      child: Card(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(mealName , style: TextStyle(
              fontSize: 30,
            ),),
            Text(dateMeal , style: TextStyle(
              fontSize: 20,
              color: Colors.greenAccent,
            ),),
            Image(
              image: AssetImage(fileImage),
              width: 400,
              fit: BoxFit.cover,
            ),
          ],
        ),
      ),
    );
}
}
