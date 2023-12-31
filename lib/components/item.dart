import 'package:flutter/material.dart';
import 'package:toku/components/item_info.dart';
import 'package:toku/models/number.dart';

class Item extends StatelessWidget {
  @override
  const Item({Key? key, required this.item, required this.color}) : super(key: key);
  final ItemModel item;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      color: color,
      child: Row(
        children: [
          Container(color: const Color(0xffFBF2DC), child: Image.asset(item.image!)),
          Expanded(
            child: ItemInfo(item: item),
          ),
        ],
      ),
    );
  }
}
