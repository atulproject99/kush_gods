import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:kush_gods/consts/app_constraints.dart';
import 'package:kush_gods/contollers/product_controller/product_categories_controller.dart';
import 'package:kush_gods/models/product.dart';
import 'package:shimmer/shimmer.dart';

class ProductDesign {
  BuildContext context;
  Product product;
  ProductDesign({required this.context, required this.product});

  Widget get productDesign => Container(
        height: 250,
        child: Column(
          children: [
            Expanded(
              child: Container(
                height: 250,
                width: 300,
                child: /*  FadeInImage.assetNetwork(
                  placeholder: "assets/images/product1.jpg",
                  image: AppConstraints.PRODUCT_URL + product.images!,
                  fit: BoxFit.fill,
                ),*/
                    CachedNetworkImage(
                  height: 250,
                  width: 300,
                  imageUrl:
                      AppConstraints.PRODUCT_URL + product.img![0].toString(),
                  fit: BoxFit.fill,
                  placeholder: (context, value) => Shimmer.fromColors(
                    child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        child: Container(
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10)))),
                    baseColor: Colors.grey.shade300,
                    highlightColor: Colors.grey.shade100,
                    enabled: true,
                    direction: ShimmerDirection.rtl,
                    period: Duration(seconds: 2),
                  ),
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  //image:
                  /* image: DecorationImage(
                        repeat: ImageRepeat.noRepeat,
                        fit: BoxFit.fill,
                        image: NetworkImage(
                            AppConstraints.PRODUCT_URL + product.images!)) */
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              "${product.name}",
              maxLines: 2,
              style: TextStyle(overflow: TextOverflow.ellipsis),
            ),
            SizedBox(height: 10),
            Text(
              "\$  ${product.price}",
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      );

  Widget get productSmallDesign => Padding(
        padding: const EdgeInsets.all(5.0),
        child: Container(
          width: 150,
          child: Column(
            children: [
              Expanded(
                child: Stack(children: [
                  Container(
                    height: 150,
                    width: 150,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                            repeat: ImageRepeat.noRepeat,
                            fit: BoxFit.fill,
                            image: NetworkImage(
                                AppConstraints.PRODUCT_URL + product.images!))),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Align(
                        alignment: Alignment.topRight,
                        child: Icon(Icons.favorite, color: Colors.red)),
                  )
                ]),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                "${product.name}",
                maxLines: 2,
                style: TextStyle(overflow: TextOverflow.ellipsis),
              ),
              SizedBox(height: 10),
              Text(
                "${product.price}",
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      );
}
