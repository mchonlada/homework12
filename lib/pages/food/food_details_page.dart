import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_food/models/food_item.dart';

class FoodDetails extends StatefulWidget {
  static const routeName = '/FoodDetail';
  const FoodDetails({Key? key}) : super(key: key);

  @override
  _FoodDetailsState createState() => _FoodDetailsState();
}

class _FoodDetailsState extends State<FoodDetails> {
  var _selectedDrawerItemIndex = 0;



  @override
  Widget build(BuildContext context) {
    var data = ModalRoute.of(context)!.settings.arguments as FoodItem;
    final _pageDataList = [
      {
        'title': data.name,
      },

    ];
    return Scaffold(
      appBar: AppBar(
        title: Text(_pageDataList[_selectedDrawerItemIndex]['title'] as String),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: const DecorationImage(
              image: const AssetImage("assets/images/bglist.jpg"),
              fit: BoxFit.fill),
        ),

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset('assets/images/${data.image}'),
            ),
            SizedBox(width: 20.0),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  margin: const EdgeInsets.only(left: 8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'เมนู : ${data.name}',
                        style: TextStyle(fontSize: 30.0,color: Colors.white),
                        textAlign: TextAlign.center,
                      ),
                      Column(
                        children: [
                          Text(
                            'ราคา : ${data.price} บาท',
                            style: TextStyle(fontSize: 30.0,color: Colors.white),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      );
    }
}


