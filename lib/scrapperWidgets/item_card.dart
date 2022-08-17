import 'package:flutter/material.dart';

class ItemCard extends StatelessWidget {
  final String itemName;
  final double price;

  const ItemCard({
    Key? key,
    required this.itemName,
    required this.price,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(18.0),
      margin: const EdgeInsets.only(top: 30.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.all(Radius.circular(20)),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            spreadRadius: 5,
            blurRadius: 9,
            offset: Offset(0, 14), // changes position of shadow
          ),
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: 8.0),
            child: Text(
              itemName,
              style: const TextStyle(
                  color: Colors.black87,
                  fontSize: 20.0,
                  fontWeight: FontWeight.w600),
            ),
          ),
          Text(
            "$price kg",
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.justify,
            maxLines: 3,
            style: const TextStyle(
              fontSize: 2.0,
              color: Colors.black87,
            ),
          )
        ],
      ),
    );
  }
}
