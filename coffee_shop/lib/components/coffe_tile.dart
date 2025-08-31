import 'package:flutter/material.dart';

import '../models/coffe.dart';

class CoffeTile extends StatelessWidget {
  final Coffe coffe;
  const CoffeTile({super.key, required this.coffe});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadiusGeometry.circular(12),
      ),

      margin: EdgeInsets.only(bottom: 10),
      child: ListTile(
        title: Text(coffe.name),
        subtitle: Text(coffe.price),
        leading: Image.asset(coffe.imagepath),
      ),
    );
  }
}
