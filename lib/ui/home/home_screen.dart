import 'package:ecommerce/model/data.dart';
import 'package:ecommerce/ui/component/app_bar_custom.dart';
import 'package:ecommerce/ui/component/card_product.dart';
import 'package:ecommerce/ui/component/category_icon.dart';
import 'package:ecommerce/ui/component/search_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}
class _HomeScreenState extends State<HomeScreen> {
  late Data datas;
  @override
  void initState() {
    super.initState();
    datas = Data();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: appBar(),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Container(
          width: double.infinity,
          child: SingleChildScrollView(
            child: Column(
              children: [
                searchField(),
                SizedBox(height: 25.h),
                _banner(image: 'https://i.pinimg.com/1200x/5a/11/59/5a11593c581158a92bb36621942d8e9c.jpg'),
                SizedBox(height: 20.h),
                _categoryMenu(),
                SizedBox(height: 10.h),
                _listProduct1(),
                SizedBox(height: 30.h),
                _ListProduct(),

              ],
            ),
          ),
        ),
      ),
    );
  }
  Widget _banner({required String image}) {
    return Container(
      width: double.infinity,
      height: 180.h,
      decoration: BoxDecoration(
        color: Color(0xffF8F8F8),
        borderRadius: BorderRadius.circular(25),
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
            offset: Offset(0, 9),
            blurRadius: 2,
            spreadRadius: 1,
          ),
        ],
        //image: DecorationImage(image: NetworkImage(image),fit: BoxFit.cover)
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 12.0,horizontal: 22.0),
            child: Container(
              width: 190,
              height: 180,
              //color: Colors.red,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("20% off even",style: TextStyle(fontSize: 23,fontWeight: FontWeight.bold),),
                  Text("Food Delivery App designed by Yoga Pratama for Korsa .",style: TextStyle(fontSize: 14),),
                  SizedBox(height: 25,),
                  ElevatedButton(
                    onPressed: (){}, 
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 11, 12, 12)
                    ),
                    child: Text("Order Now",style: TextStyle(color: Colors.white),))
                ],
              ),
            ),
          ),
          Container(
            width: 145,
            height: 220,
            //color: Colors.red,
            child: Image.asset('assets/images/image.png'),
          )

        ],
      ),
    );
  }
  Widget _categoryMenu(){
    return Container(
      width: double.infinity.h,
      height: 100.h,
      decoration: BoxDecoration(
        //color: Theme.of(context).primaryColor,
        borderRadius: BorderRadius.circular(20)
      ),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            categoryIon('https://www.pngkey.com/png/full/371-3714531_apparel-mart-comments-sportswear-icon-png.png',context),
            SizedBox(width: 15.w,),
            categoryIon('https://freesvg.org/img/sheikh_tuhin_Winter.png',context),
            SizedBox(width: 15.w,),
            categoryIon('https://static.thenounproject.com/png/33448-200.png',context),
            SizedBox(width: 15.w,),
            categoryIon('https://static.vecteezy.com/system/resources/thumbnails/042/535/463/small/sport-shoes-free-png.png',context),
            SizedBox(width: 15.w,),
            categoryIon('https://cdn-icons-png.flaticon.com/512/73/73614.png',context),
            SizedBox(width: 15.w,),
            categoryIon('https://www.pngkey.com/png/full/371-3714531_apparel-mart-comments-sportswear-icon-png.png',context),
            SizedBox(width: 15.w,),
          ],
        ),
      ),
    );
  }
  Widget _ListProduct() {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: datas.products.length,
      itemBuilder: (context, index) {
        return ProductCard(
          product: datas.products[index],
        );
      },
    );
  }
  Widget _listProduct1() {
  return GridView.builder(
    shrinkWrap: true,
    physics: const NeverScrollableScrollPhysics(),
    itemCount: datas.products.length,
    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 2,
      crossAxisSpacing: 15,
      mainAxisSpacing: 15,
      childAspectRatio: 0.7,
    ),
    itemBuilder: (context, index) {
      return ProductCard(
        product: datas.products[index],
      );
    },
  );
}
}
