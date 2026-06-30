import 'package:ecommerce/ui/cart/cart_screen.dart';
import 'package:ecommerce/ui/home/home_screen.dart';
import 'package:ecommerce/ui/profile/profile_screen.dart';
import 'package:ecommerce/ui/search/search_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});
  @override
  State<MainPage> createState() => _MainPageState();
}
class _MainPageState extends State<MainPage> {
  late final List<Widget> pages;
  int index =0;
  @override
  void initState() {
    pages = [HomeScreen(),SearchScreen(),CartScreen(),ProfileScreen()];
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: index,
        children: pages,
      ),
      bottomNavigationBar: _biulBottonNavigation(),
    );
  }
  Widget _biulBottonNavigation() {
  return SafeArea(
    top: false,
    child: Container(
      height: 65.h,
      margin: EdgeInsets.fromLTRB(16.w, 0, 8.w, 12.h),
      padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 8.h),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(24.r),
        border: Border.all(color: const Color(0xffedecf4)),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.08),
            blurRadius: 18.r,
            offset: const Offset(0, 8),
          )
        ],
      ),
      child: Row(
        children: [
          _navItem(itemIndex: 0, icon: Icons.home, label: "Home"),
          _navItem(itemIndex: 1, icon: Icons.search_off_rounded, label: "Search"),
          _navItem(itemIndex: 2, icon: Icons.shopping_bag_rounded, label: "Cart"),
          _navItem(itemIndex: 3, icon: Icons.person_2_rounded, label: "Profile"),
        ],
      ),
    ),
  );
}
  Widget _navItem({
    required int itemIndex,
    required IconData icon,
    required String label,
    int badeCount=0
  }){
    final selected = index == itemIndex;
    return Expanded(
      child: GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: (){
          setState(() {
            index = itemIndex;
          });

        },
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 180,),
          curve: Curves.easeInOut,
          height: 50.h,
          padding: const EdgeInsets.symmetric(horizontal: 8),
          decoration: BoxDecoration(
            color: selected ? const Color(0xffede8ff):Colors.transparent,
            borderRadius: BorderRadius.circular(18),
          ),
          child: Row(
            children: [
              Stack(
                clipBehavior: Clip.none,
                children: [
                  Icon(
                    icon,
                    color: selected?Theme.of(context).primaryColor:const Color.fromARGB(255, 82, 21, 21),
                    size: 20.sp,
                  ),
                  if(badeCount > 0 )
                    Positioned(
                      right: -8,
                      top: -8,
                      child: Container(
                        constraints: BoxConstraints(
                          minWidth: 17,
                          minHeight: 17,
                        ),
                        padding: EdgeInsets.symmetric(horizontal: 4),
                        decoration: BoxDecoration(
                          color: Colors.red,
                          shape: BoxShape.circle
                        ),
                        alignment: Alignment.center,
                        child: Text(
                          badeCount > 9 ? "9+":'$badeCount',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 9,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                  
                      )
                    )
                ],
              ),
              AnimatedSize(
                duration: const Duration(milliseconds: 180),
                curve: Curves.easeInOut,
                child: selected ? 
                  Padding(
                    padding: const EdgeInsets.only(left: 7),
                    child: Text(label,maxLines: 1,overflow: TextOverflow.ellipsis,style: TextStyle(color: Theme.of(context).primaryColor,fontSize: 12,fontWeight: FontWeight.w800),),
                  ):const SizedBox.shrink(),
              )
            ],
          ),
        )
      )
    );
  }
}