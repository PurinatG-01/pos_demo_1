import 'package:flutter/material.dart';
import 'package:flutter_product_card/flutter_product_card.dart';
import 'package:pos_1/common/functions/dialog.dart';

class ProductList extends StatelessWidget {
  const ProductList({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 16,
      runSpacing: 16,
      children: List.filled(
        14,
        ConstrainedBox(
          constraints: BoxConstraints(maxWidth: 250, minWidth: 200),
          child: ProductCard(
            imageUrl:
                //add your image url here
                'https://encrypted-tbn3.gstatic.com/shopping?q=tbn:ANd9GcQndSK7hvssofrM2uzv75NxVjrkAwH3RwyqWcBesUsmq1ipmkuljRr6x_SRbCKaBXvjTR9CKfAaEFtmUFw-69o52wgVMgk2hp8KDYr4FvKtQ8ZfKewgOW4gDQ&usqp=CAE4',
            categoryName: 'Pants',
            productName: 'Men Linen Pants',
            price: 199.99,
            currency: '\$', // Default is '$'
            onTap: () {
              showProductDetail(context);
            }, // Optional short description
            rating: 4.2, // Optional rating
            discountPercentage: 35.0, // Optional discount percentage
            isAvailable: true, // Optional availability status
            cardColor: Colors.white, // Optional card background color
            textColor: Colors.black, // Optional text color
            borderRadius: 8.0, // Optional border radius
          ),
        ),
      ),
    );
  }
}
