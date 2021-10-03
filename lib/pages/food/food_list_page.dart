import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_food/models/food_item.dart';
import 'package:flutter_food/pages/food/food_details_page.dart';

class FoodListPage extends StatefulWidget {
  const FoodListPage({Key? key}) : super(key: key);

  @override
  _FoodListPageState createState() => _FoodListPageState();
}

class _FoodListPageState extends State<FoodListPage> {
  final items = [
    FoodItem(id: 1, name: 'ข้าวไข่เจียว', price: 25, image: 'kao_kai_jeaw.jpg'),
    FoodItem(id: 2, name: 'ข้าวหมูแดง', price: 30, image: 'kao_moo_dang.jpg'),
    FoodItem(id: 3, name: 'ข้าวหน้าเป็ด', price: 40, image: 'kao_na_ped.jpg'),
    FoodItem(id: 4, name: 'ข้าวมันไก่', price: 30, image: 'kao_mun_kai.jpg'),
    FoodItem(id: 5, name: 'ข้าวผัด', price: 30, image: 'kao_pad.jpg'),
    FoodItem(id: 6, name: 'ผัดซีอิ๊ว', price: 35, image: 'pad_sie_eew.jpg'),
    FoodItem(id: 7, name: 'ข้าวไทย', price: 40, image: 'pad_thai.jpg'),
    FoodItem(id: 8, name: 'ราดหน้า', price: 25, image: 'rad_na.jpg'),
    FoodItem(id: 9, name: 'ส้มตำไก่ยาง', price: 60, image: 'som_tum_kai_yang.jpg'),
  ];

  @override
  Widget build(BuildContext context) {

    return Container(
      decoration: const BoxDecoration(
        image: const DecorationImage(
            image: const AssetImage("assets/images/bg.jpg"),
            fit: BoxFit.fill),
      ),
      child: ListView.builder(
        itemCount: items.length,
        itemBuilder: (BuildContext context, int index) {
          var item = items[index];

          return Card(
              margin: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {
                  print(item);
                  Navigator.pushNamed(
                    context,
                    FoodDetails.routeName,
                    arguments: FoodItem(id: item.id, name: '${item.name}', price: item.price, image: '${item.image}'),
                  );
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Image.asset('assets/images/${item.image}',
                          width: 60.0, height: 60.0, fit: BoxFit.fill),
                      /*Icon(Icons.person),*/
                      SizedBox(width: 8.0),
                      Container(
                        margin: const EdgeInsets.only(left: 8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              item.name,
                              style: TextStyle(fontSize: 20.0,color: Colors.pinkAccent.shade400),
                              textAlign: TextAlign.left,
                            ),
                            Column(
                              children: [
                                Text(
                                  '${item.price} บาท',
                                  style: TextStyle(fontSize: 20.0,color: Colors.pinkAccent.shade400),
                                  textAlign: TextAlign.left,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ));
        },
      ),
    );
  }
}
