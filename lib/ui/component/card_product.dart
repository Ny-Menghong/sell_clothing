import 'package:ecommerce/model/products.dart';
import 'package:ecommerce/ui/detail/detail_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductCard extends StatelessWidget {
  final Products product;

  const ProductCard({
    super.key,
    required this.product,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250.h,
      margin: const EdgeInsets.only(bottom: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(25),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.08),
            blurRadius: 20,
            //offset: const Offset(0, 100),
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(25),
        child: Stack(
          children: [
            Positioned.fill(
              child: Image.network(
                product.image,
                fit: BoxFit.cover,
              ),
            ),

            // Positioned.fill(
            //   child: Container(
            //     decoration: BoxDecoration(
            //       gradient: LinearGradient(
            //         begin: Alignment.topCenter,
            //         end: Alignment.bottomCenter,
            //         colors: [
            //           Colors.transparent,
            //           Colors.black.withValues(alpha: 0.6),
            //         ],
            //       ),
            //     ),
            //   ),
            // ),

            Positioned(
              top: 12.h,
              right: 12.w,
              child: Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(50),
                ),
                child: const Icon(
                  Icons.favorite_border,
                  size: 20,
                ),
              ),
            ),

            Positioned(
              left: 5.h,
              right: 5.w,
              bottom: 10.h,
              child: Container(
                width: 100,
                height: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                color: const Color.fromARGB(149, 0, 0, 0),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    children: [
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            product.name,
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                         SizedBox(height: 4.h),
                          Text(
                            '\$${product.price}',
                            style: const TextStyle(
                              color: Colors.white70,
                              fontSize: 15,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(width: 45,),
                      Container(
                        width: 50,
                        height: 50,
                        
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(87, 255, 255, 255),
                          borderRadius: BorderRadius.circular(10)
                        ),
                        child: IconButton(
                          onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => DetailScreen(products: product,),));

                          }, 
                          icon: ImageIcon(NetworkImage('https://cdn-icons-png.flaticon.com/512/263/263142.png'),color: Colors.white,size: 30,)),
                      )

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