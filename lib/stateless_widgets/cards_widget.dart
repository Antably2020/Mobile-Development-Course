import 'package:exchange_app/models/item.dart';
import 'package:flutter/material.dart';

class CardSquare extends StatelessWidget {
  final Item product;
  
  const CardSquare({
    Key? key,
    required this.product,
    
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.all(0.5),
              // For  demo we use fixed height  and width
              // Now we dont need them
               height: 80,
               width: 160,
              decoration: BoxDecoration(
                color: product.color,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Hero(
                tag: "${product.id}",
                child: Image.asset(product.image),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 4 / 4),
            child: Text(
              // products is out demo list
              product.title,
              style: TextStyle(color: Colors.black),
            ),
          ),
          Text(
            "\$${product.price}",
            style: TextStyle(fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}