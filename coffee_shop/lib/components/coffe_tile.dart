import 'package:flutter/material.dart';

import '../models/coffe.dart';

class CoffeTile extends StatelessWidget {
  final Coffe coffe;
  final void Function()? onPressed;
  CoffeTile({super.key, required this.coffe, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadiusGeometry.circular(12),
      ),
      margin: const EdgeInsets.only(bottom: 10),
      padding: EdgeInsets.symmetric(vertical: 25, horizontal: 10),
      child: ListTile(
        title: Text(coffe.name),
        subtitle: Text(coffe.price),
        leading: Image.asset(coffe.imagepath),
        trailing: IconButton(icon: Icon(Icons.add), onPressed: onPressed),
      ),
    );
  }
}
